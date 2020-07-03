using Statistics
using RollingFunctions
using CSV: File
using DataFrames

# The characteristic period of a dataset (i.e. the time it takes to increase by a factor of e)
R(data) = diff(log.(data))

nydata = File("nytymes/us-counties") |> DataFrame
census = File("static/")
