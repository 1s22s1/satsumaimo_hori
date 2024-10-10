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
    k, s = parseints()

    outcome = 0

    for x ∈ 0:k, y ∈ 0:k, z ∈ 0:k
        if x + y + z == s
            outcome += 1
        end
    end

    println(outcome)
end

solve()
