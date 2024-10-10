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
    x = parseint()

    arr = []

    for b ∈ 1:40, p ∈ 2:10
        push!(arr, b^p)
    end

    println(maximum(arr[arr.≤x]))
end

solve()
