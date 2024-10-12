parseint() = readline() |> x -> parse(Int, x)

parsestring() = readline()

parseints() = readline() |> split |> x -> parse.(Int, x)

parsestrings() = readline() |> split

using StaticArrays

function solve()
    n = parseint()
    a = [split(parsestring(), "") for _ ∈ 1:n]

    a = hcat(a...)

    b = copy(a)

    for i ∈ 1:n÷2
        for x ∈ i:n+1-i, y ∈ i:n+1-i
            b[y, n+1-x] = a[x, y]
        end

        a = copy(b)
    end

    for i ∈ 1:size(b, 1)
        println(b[i, :] |> join)
    end
end

solve()
