parseint() = readline() |> x -> parse(Int, x)

function parsestring()
    return readline()
end

function parseints()
    return readline() |> split |> x -> parse.(Int, x)
end

function parsestrings()
    return readline() |> split
end

function solve()
    n, m = parseints()
    conditions = [parseints() for i ∈ 1:m]

    if n == 1
        for i ∈ 0:9
            flag = true

            for (s, c) ∈ conditions
                if i ÷ 10^(1-s) % 10 ≠ c
                    flag = false
                end
            end

            if flag
                println(i)

                exit()
            end
        end
    elseif n == 2
        for i ∈ 10:99
            flag = true

            for (s, c) ∈ conditions
                if i ÷ 10^(2-s) % 10 ≠ c
                    flag = false
                end
            end

            if flag
                println(i)

                exit()
            end
        end
    else
        for i ∈ 100:999
            flag = true

            for (s, c) ∈ conditions
                if i ÷ 10^(3-s) % 10 ≠ c
                    flag = false
                end
            end

            if flag
                println(i)

                exit()
            end
        end
    end

    println(-1)
end

solve()
