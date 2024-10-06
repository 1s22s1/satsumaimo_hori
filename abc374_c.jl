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
    kn = parseints()

    outcome = typemax(Int32)

    for bit ∈ 1:(1<<n)-1
        s = Int[]
        t = Int[]

        for i ∈ 0:n-1
            if bit & 1 << i ≠ 0
                push!(s, kn[i+1])
            else
                push!(t, kn[i+1])
            end
        end

        outcome = min(outcome, max(sum(s), sum(t)))
    end

    println(outcome)
end

solve()
