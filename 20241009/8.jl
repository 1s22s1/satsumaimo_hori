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
    a = [parseints() for _ ∈ 1:3]
    n = parseint()
    b = [parseint() for _ ∈ 1:n]

    # yoko
    for i ∈ 1:3
        if a[i] ⊆ b
            println("Yes")

            exit()
        end
    end

    # tate
    for i ∈ 1:3
        if map(x -> x[i], a) ⊆ b
            println("Yes")

            exit()
        end
    end

    if a[1][1] ∈ b && a[2][2] ∈ b && a[3][3] ∈ b
        println("Yes")

        exit()
    end

    if a[1][1] ∈ b && a[2][2] ∈ b && a[3][3] ∈ b
        println("Yes")

        exit()
    end

    if a[1][3] ∈ b && a[2][2] ∈ b && a[3][1] ∈ b
        println("Yes")

        exit()
    end

    println("No")
end

solve()
