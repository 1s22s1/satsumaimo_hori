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
    n, m = parseints()
    a = [split(parsestring(), "") for _ ∈ 1:n]

    for i ∈ 1:n
        for j ∈ 1:m
            count = 0

            for x ∈ -1:1:1
                for y ∈ -1:1:1
                    if 1 ≤ i + x ≤ n && 1 ≤ j + y ≤ m
                        if a[i+x][j+y] == "#"
                            count += 1
                        end
                    end
                end
            end

            print(count)
        end

        println("")
    end
end

solve()
