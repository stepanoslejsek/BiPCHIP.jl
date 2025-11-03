function generate_spline_basis(ranges::AbstractArray{T}, n::Int) where {T<:AbstractFloat}
    """
        This function generates a spline basis B_i() of order `n` for `i`-th variable within a specified range given as `i`-th element of the `ranges` vector.

        Example: function F(a, b, c) where a is specified at [0., 1., 2., 3., 4.], b at [-1., 0., 1.] and c at [0., 1., 2., 3.]. The basis of order 2 can be generated as
        ```
        bases = generate_spline_basis([[0., 1., 2., 3., 4.], [-1., 0., 1.], [0., 1., 2., 3.]], 2)
        ```
    """
    bases = [BSplineBasis(BSplineOrder(n), range) for range in ranges]
    return bases
end

function diff(B::AbstractBSplineBasis, i::Int, x, order::Int)
    return evaluate(B, i, x, Derivative(order))
end
