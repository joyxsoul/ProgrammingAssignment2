## Function that cache the inverse of a matrix rather than computing it repeatedly


## makeCacheMatrix: This function creates a special “matrix” object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
  x <<- y
  m <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse)m <<- inverse
  getInverse <- function()m
  list(set = set, get = get,
  setInverse = setInverse
  getInverse = getInverse)
}


## cacheSolve: This function computes the inverse of the special “matrix” returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then cacheSolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInverse()
        if(!is.null(m)){
        message("Getting cached data")
        return(m)
        }
        specialmatrix <- x$get()
        m <- solve(specialmatrix,...)
        s$setInverse(m)
        m
}
