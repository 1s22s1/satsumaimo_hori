parseint() = readline() |> x -> parse(Int, x)

parsestring() = readline()

parseints() = readline() |> split |> x -> parse.(Int, x)

parsestrings() = readline() |> split

function solve()
    n, k = parseints()

    dict = Dict()

    for i ∈ 1:n
        dict[i%k] = get(dict, i%k, 0) + 1
    end

    outcome = 0
    for a ∈ 1:k
        b = k - a
        c = k - a

        if (b+c)%k == 0
            outcome += dict[a%k]*dict[b%k]*dict[c%k]
        end
    end

    println(outcome)
end

solve()
