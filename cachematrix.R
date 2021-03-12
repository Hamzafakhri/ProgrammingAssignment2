## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(input = matrix()) {
  invTest <- NULL                            
  set <- function(y) {                   
    input <<- y                          
    invTest <<- NULL                       
  }
  get <- function() input                   
  setinverse <- function(inverse) inv <<- inverse 
  getinverse <- function() invTest                    
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv)
  inv
}
