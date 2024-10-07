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
    s, t = parseints()

    outcome = 0

    for a ∈ 0:100, b ∈ 0:100, c ∈ 0:100
        if a + b + c ≤ s && a * b * c ≤ t
            outcome += 1
        end
    end

    println(outcome)
end

solve()
