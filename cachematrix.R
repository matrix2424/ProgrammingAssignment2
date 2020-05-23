## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) m <<- inverse
  getinverse<- function() m
  matrix(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse, nrow=1,ncol=4)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        cacheSolve <- function(x, ...) {
  m <- x[1,4]
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x[1,2]
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
