parseint() = readline() |> x -> parse(Int, x)

parsestring() = readline()

parseints() = readline() |> split |> x -> parse.(Int, x)

parsestrings() = readline() |> split

function solve()
    n = parseint()
    s = split(parsestring(), "")

    outcome = 0

    for i ∈ 1:n-2
        if s[i] == "#" && s[i+1] == "." && s[i+2] == "#"
            outcome += 1
        end
    end

    println(outcome)
end

solve()
