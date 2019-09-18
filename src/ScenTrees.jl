module ScenTrees
include("TreeStructure.jl")
include("TreeApprox.jl")
include("StochPaths.jl")
include("LatticeApprox.jl")
include("bushinessNesDistance.jl")
export TreeApproximation!,LatticeApproximation,Tree,Lattice,stage,height,leaves,nodes,root,
        partTree,buildProb!,treeplot,plotD,PlotLattice,GaussianSamplePath,RunningMaximum,
        path,bushinessNesDistance
end