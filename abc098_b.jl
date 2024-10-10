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
    n = parseint()
    s = parsestring()

    outcome = 0

    for i ∈ 1:n
        count = Set(split(s[begin:i], "")) ∩ Set(split(s[i+1:end], "")) |> length

        outcome = max(outcome, count)
    end

    println(outcome)
end

solve()
