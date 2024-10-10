function parseint()
    return readline() |> x -> parse(Int, x)
end
function parsestring()
    return readline()
end

parseints() = readline() |> split |> x -> parse.(Int, x)

function parsestrings()
    return readline() |> split
end

function solve()
    a, b, w = parseints()

    min_outcome = typemax(Int)
    max_outcome = -1

    for i ∈ 1:1000*1000
        gram = w*1000/i

        if a ≤ gram ≤ b
            min_outcome = min(min_outcome, i)
            max_outcome = max(max_outcome, i)
        end
    end

    if min_outcome == typemax(Int)
        println("UNSATISFIABLE")
    else
        println("$(min_outcome) $(max_outcome)")
    end
end

solve()
