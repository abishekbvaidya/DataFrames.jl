module DataFrames

using Statistics, Printf, REPL
using Reexport, SortingAlgorithms, Compat, Unicode, PooledArrays
@reexport using CategoricalArrays, Missings, InvertedIndices
using Base.Sort, Base.Order, Base.Iterators
using TableTraits, IteratorInterfaceExtensions

import DataAPI,
       DataAPI.All,
       DataAPI.Between,
       DataAPI.describe,
       Tables,
       Tables.columnindex,
       Future.copy!

export AbstractDataFrame,
       All,
       Between,
       ByRow,
       DataFrame,
       DataFrame!,
       DataFrameRow,
       GroupedDataFrame,
       SubDataFrame,
       Tables,
       aggregate,
       allowmissing!,
       antijoin,
       by,
       categorical!,
       columnindex,
       combine,
       completecases,
       crossjoin,
       deleterows!,
       describe,
       disallowmissing!,
       dropmissing!,
       dropmissing,
       flatten,
       groupby,
       groupindices,
       groupvars,
       innerjoin,
       insertcols!,
       leftjoin,
       mapcols,
       ncol,
       nonunique,
       nrow,
       order,
       outerjoin,
       rename!,
       rename,
       rightjoin,
       select!,
       select,
       semijoin,
       stack,
       unique!,
       unstack

if VERSION >= v"1.1.0-DEV.792"
    import Base.eachcol, Base.eachrow
else
    import Compat.eachcol, Compat.eachrow
    export eachcol, eachrow
end

if VERSION < v"1.2"
    export hasproperty
end

include("other/utils.jl")
include("other/index.jl")

include("abstractdataframe/abstractdataframe.jl")
include("dataframe/dataframe.jl")
include("subdataframe/subdataframe.jl")
include("dataframerow/dataframerow.jl")
include("groupeddataframe/groupeddataframe.jl")
include("dataframerow/utils.jl")

include("other/broadcasting.jl")

include("abstractdataframe/selection.jl")
include("abstractdataframe/iteration.jl")
include("abstractdataframe/join.jl")
include("abstractdataframe/reshape.jl")

include("groupeddataframe/splitapplycombine.jl")

include("abstractdataframe/show.jl")
include("groupeddataframe/show.jl")
include("dataframerow/show.jl")
include("abstractdataframe/io.jl")

include("abstractdataframe/sort.jl")
include("dataframe/sort.jl")

include("deprecated.jl")

include("other/tables.jl")

end # module DataFrames
