```julia
function myfunction(x)
  if x > 0
    return x^2
  elseif x == 0
    return 0
  else
    error("Input must be non-negative")
  end
end

println(myfunction(2))
println(myfunction(0))
println(myfunction(-2))
```