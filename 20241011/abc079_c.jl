parseint() = readline() |> x -> parse(Int, x)

parsestring() = readline()

function parseints()
    return readline() |> split |> x -> parse.(Int, x)
end

function parsestrings()
    return readline() |> split
end

function solve()
    s = parsestring()
    a, b, c, d = split(s, "")

    for op1 ∈ ["+", "-"], op2 ∈ ["+", "-"], op3 ∈ ["+", "-"]
        code = a * op1 * b * op2 * c * op3 * d

        if eval(Meta.parse(code)) == 7
            println(code * "=7")

            exit()
        end
    end

end

solve()
