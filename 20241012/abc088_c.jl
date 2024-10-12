parseint() = readline() |> x -> parse(Int, x)

parsestring() = readline()

parseints() = readline() |> split |> x -> parse.(Int, x)

parsestrings() = readline() |> split

function solve()
    c = [parseints() for _ ∈ 1:3]

    for (p, q) ∈ [[1, 2], [2, 3], [3, 1]]
        diff = c[p] - c[q]

        if any(x -> x ≠ diff[begin], diff)
            println("No")

            exit()
        end
    end

    println("Yes")
end

solve()
