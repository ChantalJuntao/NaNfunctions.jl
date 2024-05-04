using NaNfunctions
using Documenter

DocMeta.setdocmeta!(NaNfunctions, :DocTestSetup, :(using NaNfunctions); recursive=true)

makedocs(;
    modules=[NaNfunctions],
    authors="Chantal Chen <juntao.chen@wustl.edu> and contributors",
    sitename="NaNfunctions.jl",
    format=Documenter.HTML(;
        canonical="https://ChantalJuntao.github.io/NaNfunctions.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/ChantalJuntao/NaNfunctions.jl",
    devbranch="master",
)
