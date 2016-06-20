## The functions will cache the inverse of a matrix



## This is a function that creates a special "matrix" 
## object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) i <<- inverse
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinvesre,
       getinverse = getinverse)
}


## The following function calculates the inverse of the special
## "matrix" created with the above function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  i <- x$getmean()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}
