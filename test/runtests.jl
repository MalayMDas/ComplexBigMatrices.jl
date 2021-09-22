using ComplexBigMatrices
using LinearAlgebra
using Test

@testset "ComplexBigMatrices.jl" begin
    # Create Float64 and BigFloat Matrices
    setprecision(512)
    a = [[1 1.0im];[1.0im 1]];
    biga = Complex{BigFloat}.(a)

    # @test sum(Float64.(abs.(eigen(a).vectors - eigen(biga).vectors))) = 0.0
    @test sum(Float64.(abs.(exp(a) - exp(biga)))) < 1e-12
    @test sum(Float64.(abs.(log(a) - log(biga)))) < 1e-12
end
