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
    a = [split(parsestring(), "") for _ ∈ 1:h]

    # Remove yoko
    row_indexies = findall(row -> all(x -> x == ".", row), a)
    deleteat!(a, row_indexies)

    # Remove tate
    column_indexies = []
    for i ∈ 1:length(a[1])
        values = map(row -> row[i], a)

        if all(x -> x == ".", values)
            push!(column_indexies, i)
        end
    end

    for row ∈ a
        deleteat!(row, column_indexies)
    end

    for row ∈ a
        println(join(row))
    end
end

solve()
