module ComplexBigMatrices

"""
This module calculates exp(), log() and eigen() of a complex BigFloat Matrix.
"""

export exp, log
import .Base: exp, log

using LinearAlgebra
using GenericLinearAlgebra
using GenericSchur

"""
    exp(a::Matrix{Complex{BigFloat}})
Extends exp() to work with Matrix{Complex{BigFloat}}
"""
function exp(a::Matrix{Complex{BigFloat}})
    eig = eigen(a)
    eig.vectors*Diagonal(exp.(eig.values))*eig.vectors^(-1)
end


"""
    log(a::Matrix{Complex{BigFloat}})
Extends exp() to work with Matrix{Complex{BigFloat}}
"""
function log(a::Matrix{Complex{BigFloat}})
    eig = eigen(a)
    eig.vectors*Diagonal(log.(eig.values))*eig.vectors^(-1)
end


"""
    eigen(a::Matrix{Complex{BigFloat}})
Extends exp() to work with Matrix{Complex{BigFloat}}
"""
function eigen(a::Matrix{Complex{BigFloat}})
    eigen(a)
end

end
