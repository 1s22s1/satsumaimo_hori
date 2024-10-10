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
    n, p, q = parseints()
    an = parseints()

    outcome = 0

    for i ∈ 1:n, j ∈ i+1:n, k ∈ j+1:n, l ∈ k+1:n, m ∈ l+1:n
        tmp = an[i] * an[j]
        tmp %= p

        tmp *= an[k]
        tmp %= p

        tmp *= an[l]
        tmp %= p

        tmp *= an[m]
        tmp %= p

        if tmp == q
            outcome += 1
        end
    end

    println(outcome)
end

solve()
