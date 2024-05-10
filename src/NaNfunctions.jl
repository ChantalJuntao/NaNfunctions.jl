module NaNfunctions

using LinearAlgebra, Statistics, FixedPointNumbers
using AxisArrays
using AxisArrays: AxisArray, Axis

export nansum, nanmean, nonzeromin

include("NaNprocessing.jl")

end
