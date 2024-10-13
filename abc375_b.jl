parseint() = readline() |> x -> parse(Int, x)

parsestring() = readline()

parseints() = readline() |> split |> x -> parse.(Int, x)

parsestrings() = readline() |> split

using Printf

function solve()
    n = parseint()
    positions = [parseints() for _ ∈ 1:n]

    pushfirst!(positions, [0, 0])
    push!(positions, [0, 0])

    outcome = 0

    for i ∈ 1:length(positions)-1
        outcome +=
            hypot(positions[i][1] - positions[i+1][1], positions[i][2] - positions[i+1][2])
    end

    @printf("%.10f\n", outcome)
end

solve()
