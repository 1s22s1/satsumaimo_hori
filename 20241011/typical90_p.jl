function parseint()
    return readline() |> x -> parse(Int, x)
end

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
    outcome = typemax(Int)

    n = parseint()
    a, b, c = parseints()

    for i ∈ 0:9999
        for j ∈ 0:9999
            balance = n - a * i - b * j

            if balance ≥ 0 && balance % c == 0
                outcome = min(outcome, i + j + balance ÷ c)
            end
        end
    end

    println(outcome)
end

solve()
