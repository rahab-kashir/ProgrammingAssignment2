## functions to create a special “matrix” object 
## this object can cache its inverse


makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  Get <- function () x
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() inv
  list(set = set, get = get, setInverse = setInverse, getInverse= getInverse)
}


## the function to compute/find the inverse of “matrix” created by makeCacheMatrix
## if the inverse has already been calculated but the matrix remains unchanged then it should retrieve the inverse from the CACHE


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  Inv <- x$getInverse()
  If (!is.null(inv)) {
    message(“Getting Cached Data”)
    return(inv)
  }
  Mat <- x$get()
  Inv <- solve(mat, . . .)
  X$setInverse(inv)
  Inv
}
