using Documenter, ScenTrees

makedocs(
	sitename =  "ScenTrees.jl",
	authors = "Kipngeno Kirui",
	clean = true,
	doctest = false,
	format = Documenter.HTML(
		assets = ["exampleTree1.png",
		          "Tree402.png",
		          "Tree4022.png",
			  "Tree40221.png",
			  "Tree40222.png",
			  "example1.png",
			  "example21.png",
			  "example22.png",
		          "treeapprox1.png",
		          "treeapprox2D.png",
		          "ExampleLattice2.png",
		          "LatticeApprox.png",
			  "diffHeights.png",
			  "KernLattice.png"
		          ],
		prettyurls = get(ENV, "CI", nothing) == "true"),
	pages = ["Home" => "index.md",
		"Tutorials" => Any["tutorial/tutorial1.md",
				    "tutorial/tutorial2.md",
				    "tutorial/tutorial3.md",
				    "tutorial/tutorial31.md",
				    "tutorial/tutorial4.md",
				    "tutorial/tutorial41.md",
				    "tutorial/tutorial5.md"
				]
			                    
		]
)

if !Sys.iswindows()
	deploydocs(
		deps = Deps.pip("mkdocs","python-markdown-math"),
	   	repo = "github.com/kirui93/ScenTrees.jl.git",
	   	target = "site",
	   	make = () -> run(`mkdocs build`)  
	)
end
