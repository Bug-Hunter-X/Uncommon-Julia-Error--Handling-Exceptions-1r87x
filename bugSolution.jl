```julia
function myfunction(x)
  if x > 0
    return x^2
  elseif x == 0
    return 0
  else
    throw(DomainError(x, "Input must be non-negative"))
  end
end

println(myfunction(2))
println(myfunction(0))

try
    println(myfunction(-2))
catch e
    if e isa DomainError
        println("Error: ", e.msg, ", Invalid input: ", e.value)
    else
        println("An unexpected error occurred: ", e)
    end
end
```