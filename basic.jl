# 1. Basic Syntax
print("Hello world")
print("Julia!")

println("Hello world")
println("Julia")

println(typeof(100))

# 2. string -> only " ". Not allowed ' '. -> python is both are ok.

str = "Hello world"
str_1 = "Jul"
str_2 = "ia"

println("----- String Syntax-----")
println(str[1])
println(str[end])
println(str[2:5])

println(str_1 * str_2)

println(length(str))
println(split(str, ""))
println(split(str, " "))
println(join([str_1, str_2], " "))
println(lowercase(str))
println(uppercase(str))

println("$str_1 - $str_2")
println("answer: $(2 * 2)")


println("----- Change type -----")
num1 = "123"
num2 = parse(Int64, num1)
num3 = parse(Float64, num1)
num4 = string(Float64, num2)


println(typeof(num1))
println(typeof(num2))
println(typeof(num3))
println(typeof(num4))

println("----- Tupple -----")
a = (1, 2, 3)
# or
b = 1, 2, 3
println(a)
println(typeof(a))
println(typeof(b))

println("----- Array -----")
arr = [1, 2, 3]
println(arr)
println(typeof(arr))

push!(arr, 4)
println("append data to last: $arr")

pushfirst!(arr, 0)
println("append data to first: $arr")

insert!(arr, 2, -1)
println("insert -1 data to 2 index: $arr")

deleteat!(arr, 1)
println("delete 1 index: $arr")

append!(arr, [5, 6, 7])
println("append new array: $arr")

println(pop!(arr))
println(arr)

println(maximum(arr))
println(minimum(arr))

println("----- Dictionary -----")
dict = Dict("a" => 1, "b" => 2, "c" => 3)
println(dict)
println(dict["a"])

dict["d"] = 4
println(dict)

println(pop!(dict, "d"))
println(dict)

println(merge(dict, Dict("d" => 4, "e" => 5)))
println(dict) # dict before merge. Doesn't be destroyed.

println(haskey(dict, "a"))
println(haskey(dict, "r"))


println("----- Multiple Array -----")
println([1, 2, 3])
println(Float64[1, 2, 3])
println(Vector(1:4))


println("----- Two-dimensional array -----")
println([1 2; 3 4])
println([1 2
        3 4])
println(Float64[1 2; 3 4])

println(Array{Float64}(undef, 2, 2))
println(zeros(Float64, 2, 2))
println(ones(Float64, 1, 2))
println(fill(2, 2, 2))
println(rand(2, 2))
println(randn(2, 2))

println("----- One-dimensional array methods -----")
vec = Vector(1:5)
println("Sample: $(vec)")
println(vec[2])
println(vec[begin])
println(vec[end])
println(vec[2:4])
println(vec[1:2:end])
println(vec[[1, 3]])
println(vec[vec .< 3])


println("----- Two-dimensional array methods -----")
mat = [1 2 3; 4 5 6]
println("Sample: $(mat)")

println(mat[2, 1])
println(mat[begin, begin])
println(mat[end, end])
println(mat[begin, end])
println("Get column 2: $(mat[:, 2])")
println("Get row 2: $(mat[2, :])")
println(mat[[CartesianIndex(2, 1), CartesianIndex(2, 2)]])
println(mat[2:2, :]) # ???
println(mat[mat .> 2])