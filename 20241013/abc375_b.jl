parseint() = readline() |> x -> parse(Int, x)

parsestring() = readline()

parseints() = readline() |> split |> x -> parse.(Int, x)

parsestrings() = readline() |> split

using Printf

function solve()

    n = parseint()
    positions = [parseints() for _ ∈ 1:n]

    outcome = 0

    pushfirst!(positions, [0, 0])
    push!(positions, [0, 0])

    for i ∈ 1:length(positions)-1
        distance = positions[i] - positions[i+1] |> x -> x .^ 2 |> sum |> x -> sqrt(x)
        outcome += distance
    end

    @printf("%.10f\n", outcome)
end

solve()
