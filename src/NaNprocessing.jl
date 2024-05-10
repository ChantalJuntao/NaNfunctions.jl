#functions for working with NaNs
"""
    nansum(image)

Sums values in array without poisoning by NaN

# Examples
```julia-repl

```

"""
function nansum(img)
    s = 0.0;
    for val in img
       if !isnan(val)
           s += val;
       end
    end
    return s;
end

"""
    nanmean(image)

Calculates mean values of array without poisoning by NaN

# Examples
```julia-repl

```

"""
function nanmean(img)
    x = img[1]
    s = zero(x);
    n = 0;
    for val in img
        if !isnan(val)
            s += val;
            n += 1;
        end
    end
    return s/n;
end

"""
    nonzeromin(a)

Returns the nonzero minimum of an array

# Examples
```julia-repl
julia> A = rand(5)
5-element Array{Float64,1}:
 0.448545624453329
 0.34016599646961954
 0.33010918551698243
 0.6010967985191111
 0.6771347007098745

julia> nonzeromin(A)
0.33010918551698243
```
"""
function nonzeromin(a::AbstractArray{T}) where {T <: Normed}
    #For making destriping volume positive
    return eps(eltype(a))
end
function nonzeromin(a::AxisArray{T}) where {T <: Normed}
    return eps(eltype(a))
end
function nonzeromin(a)
    minval = typemax(eltype(a));
    for x in a
        if 0 < x < minval
            minval = x;
        end
    end
    return minval
end