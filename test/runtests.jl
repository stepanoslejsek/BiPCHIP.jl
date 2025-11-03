using BiPCHIP
using Test

@testset "BiPCHIP.jl" begin
    # Write your tests here.
    M = [0.0, 0.2, 0.4, 0.6, 0.8, 1.0, 1.2, 1.4, 1.6, 1.8]
    h = [0.0, 5, 10, 15, 20, 25, 30, 40, 50, 70]
    order = 4 # For cubic spline

    basis_M, basis_h = generate_spline_basis([M, h], order)

end
