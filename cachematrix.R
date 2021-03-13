## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(input = matrix()) {
  # initialize matrix
  invTest <- NULL       
  
  # define set function 
  set <- function(y) {                   
    input <<- y                          
    invTest <<- NULL                       
  }
  # define the get function to retunr the matrix 
  get <- function() input                   
  # assign inv value in environment 
  setinverse <- function(inverse) inv <<- inverse 
  # get the inv value 
  getinverse <- function() invTest  
  # for function get and set calling
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  
  # get inverse from previous function 
  inv <- x$getinverse() 
  # check if matrix is null
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  # assign matrix 
  data <- x$get()
  # solve the matrix
  result <- solve(data, ...)
  # set result in previous function
  x$setinverse(result)
  # print the result
  result
}
