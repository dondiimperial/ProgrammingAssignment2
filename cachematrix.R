## Functions that create a matrix and its inverse. The result of computing the matrix's inverse is cached so that
## subsequent requests for an inverse of the matrix does not need to repeat the (expensive) computation. 

## Make a caching matrix. This function returns a wrapper around a matrix that includes getters and setters for the matrix,
## and an operation to retrieve the matrix's inverse. 
makeCacheMatrix <- function(x = matrix()) {

}


## Function that computes the inverse of a matrix returned by the makeCacheMatrix function above.
cacheSolve <- function(x, ...) {

}
