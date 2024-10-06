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
    s = parsestring()
    t = parsestring()

    if s == t
        println(0)

        exit()
    end

    min_length = min(length(s), length(t))

    for i ∈ 1:min_length
        if s[i] ≠ t[i]
            println(i)

            exit()
        end
    end

    println(min_length + 1)
end

solve()
