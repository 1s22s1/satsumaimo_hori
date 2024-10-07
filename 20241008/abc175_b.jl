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
    n = parseint()
    ln = parseints()

    outcome = 0

    for i ∈ 1:n, j ∈ i+1:n, k ∈ j+1:n
        if ln[i] + ln[j] > ln[k] &&
           ln[j] + ln[k] > ln[i] &&
           ln[k] + ln[i] > ln[j] &&
           ln[i] ≠ ln[j] &&
           ln[j] ≠ ln[k] &&
           ln[k] ≠ ln[i]

            outcome += 1
        end
    end

    println(outcome)
end

solve()
