## Computation of makeCacheMatrix and cacheSolve functions for the R Programming Assignmente of Week 3.
## The objective is to obtain the inverse of a given matrix.

## makeCacheMatrix following the example of the makeVector function.
## The only difference is the input matrix and the use of "inversa" instead of "mean".


makeCacheMatrix <- function(x = matrix()) {
  matrix_inv <- NULL
  set <- function(y){
    x<<-y
    matrix_inv<<-NULL
  }
  get <- function() x
  setinv <- function(inv) matrix_inv <<- inv
  getinv <- function() matrix_inv
  list(set = set, get= get, setinv = setinv, getinv=getinv)
}


## Function that finally calculates the inverse of the previously defined matrix obtained with "makeCacheMatrix".
## Computed following the given example of "cachemean".

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  matrix_inv <- x$getinv()
  if(!is.null(matrix_inv)){
    message("Getting cached matrix...")
    return(matrix_inv)
  }
  data <- x$get()
  matrix_inv <- solve(data, ...)
  x$setinv(matrix_inv)
  matrix_inv
}
