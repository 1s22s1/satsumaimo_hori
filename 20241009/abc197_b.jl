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
    h, w, x, y = parseints()
    s = [split(parsestring(), "") for _ ∈ 1:h]

    outcome = 1

    # See right
    for i ∈ y+1:w
        if s[x][i] == "."
            outcome += 1
        else
            break
        end
    end

    # See left
    for i ∈ y-1:-1:1
        if s[x][i] == "."
            outcome += 1
        else
            break
        end
    end

    # See Down
    for i ∈ x+1:h
        if s[i][y] == "."
            outcome += 1
        else
            break
        end
    end

    # See Top
    for i ∈ x-1:-1:1
        if s[i][y] == "."
            outcome += 1
        else
            break
        end
    end

    println(outcome)
end

solve()
