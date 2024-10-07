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
    n, d = parseints()
    xn = [parseints() for _ ∈ 1:n]

    outcome = 0

    for i ∈ 1:n
        for j ∈ i+1:n
            distance = xn[i] - xn[j] |> x -> x .^ 2 |> sum |> x -> sqrt(x)

            if isinteger(distance)
                outcome += 1
            end
        end
    end

    println(outcome)
end

solve()
