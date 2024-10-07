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
    h, w = parseints()
    c = [split(parsestring(), "") for _ ∈ 1:h]

    for i ∈ 1:2h
        for j ∈ 1:w
            print(c[(i+1)÷2][j])
        end

        println("")
    end
end

solve()
