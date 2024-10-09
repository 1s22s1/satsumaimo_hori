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

    tmp1 = []

    # Remove row(yoko)
    for row ∈ a
        if !all(x -> x == ".", row)
            push!(tmp1, row)
        end
    end

    tmp2 = []

    for _ ∈ 1:size(a, 1)
        push!(tmp2, [])
    end

    @show tmp1
    @show tmp2
    # Remove column(tate)
    for i ∈ 1:size(a, 1)
        targets = map(x -> x[i], tmp1)

        if !all(x -> x == ".", targets)
            for j ∈ eachindex(targets)
                push!(tmp2[j], targets[j])
            end
        end
    end

    for row ∈ tmp2
        println(join(row))
    end
end

solve()
