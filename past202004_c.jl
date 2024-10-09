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
    s = [split(parsestring(), "") for _ ∈ 1:n]

    for i ∈ n:-1:2
        for j ∈ 1:2n-1
            for m ∈ -1:1:1
                if 1 ≤ j+m ≤ 2n-1 && s[i][j] == "X" && s[i-1][j+m] == "#"
                    s[i-1][j+m] = "X"
                end
            end
        end
    end

    for row ∈ s
        println(join(row))
    end
end

solve()
