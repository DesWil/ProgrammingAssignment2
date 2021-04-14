## Put comments here that give an overall description of what your
## functions do
## My function creates a Cache Matrix 

## Write a short comment describing this function
## Cache Matrix creation

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y){
  x <<- y 
  i <<- NULL
  }

  get <- function() x
  setInverse <- function(inverse) i <<- inverse
  getInverse <- function(inverse) i
  list( set= set,get = get, setInverse = setInverse, getInverse = getInverse)



}


## Write a short comment describing this function
## My function will solve the Cache created of a matrix

cacheSolve <- function(x, ...) {
  
  i <- x$getInverse()
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }
  mat <- x$get()
  i <- solve(mat,...)
  x$setInverse(i)
  i
        ## Return a matrix that is the inverse of 'x'
}
