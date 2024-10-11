parseint() = readline() |> x -> parse(Int, x)

parsestring() = readline()

parseints() = readline() |> split |> x -> parse.(Int, x)

parsestrings() = readline() |> split

function solve()
    a, b, c, x, y = parseints()

    outcome = typemax(Int)

    for i ∈ 0:2:2max(x, y)
        outcome = min(outcome, a * (max(x - i ÷ 2, 0)) + b * (max(y - i ÷ 2, 0)) + c * i)
    end

    println(outcome)
end

solve()
