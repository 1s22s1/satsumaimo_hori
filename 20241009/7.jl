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
    s = parsestring()
    t = parsestring()

    outcome = typemax(Int)

    for i ∈ 1:length(s)-length(t)+1
        diff_count = 0

        for j ∈ 0:length(t)-1
            if s[i+j] ≠ t[j+1]
                diff_count += 1
            end
        end

        outcome = min(outcome, diff_count)
    end

    println(outcome)
end

solve()
