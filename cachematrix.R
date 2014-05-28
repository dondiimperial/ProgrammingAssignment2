## Functions that create a matrix and its inverse. The result of computing the matrix's inverse is cached so that
## subsequent requests for an inverse of the matrix does not need to repeat the (expensive) computation. 

## Make a caching matrix. This function returns a wrapper around a matrix that includes getters and setters for the matrix,
## and the matrix's inverse. 
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function x
  setInv <- function(iv) inv <<- iv
  getInv <- function() inv
  
  list(set = set, get = get, setInv = setInv, getInv = getInv)
}


## Function that computes the inverse of a matrix returned by the makeCacheMatrix function above.
## If a cached copy of the inverse is available it returns that otherwise, it computes it then 
## sends it back to the matrix for caching.
cacheSolve <- function(x, ...) {
  inv <- x$getInv()
  if (!is.null(inv)) {
    return inv
  }
  
  matrix <- x$get()
  inv <- solve(x, ...)
  matrix$setInv(inv)
  inv
  
}
