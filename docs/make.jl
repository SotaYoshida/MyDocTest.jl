using MyDocTest
using Documenter

#DocMeta.setdocmeta!(MyDocTest, :DocTestSetup, :(using MyDocTest); recursive=true)

makedocs(;
    modules=[MyDocTest],
    authors="SotaYoshida <syoshida@cc.utsunomiya-u.ac.jp> and contributors",
    repo="https://github.com/SotaYoshida/MyDocTest.jl/blob/{commit}{path}#{line}",
    sitename="MyDocTest.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://SotaYoshida.github.io/MyDocTest.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
        "Chi" => "chi.md",
        "IM" => "im.md",
    ],
)

deploydocs(;
    repo="github.com/SotaYoshida/MyDocTest.jl",
    devbranch="main",
)
