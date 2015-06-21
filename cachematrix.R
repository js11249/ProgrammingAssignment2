## Programming Assignment #2
## I will modify the example provided to cache the mean to cache the matrix inverse
## First function will identify the matrix to be cached
## Second function will calculate the inverse of the matrix to be cached
## for simplicity of this code i have renamed 'm' from the example to 'inverse' this can be changed if the code is run

## Similar to the example, This first function will create the matrix, which is a list containing a function
## I will set the value of the matrix, get the value of the matrix, then set the inverse and get the inverse matrix


makeCacheMatrix <- function(x = matrix()) {
  
inverse <- NULL
set <- function(y)
{ x <<- y
  inverse <<- NULL}

get <- function() x
setinverse <- function(inverse) inverse <<- inverse
getinverse <- function() inverse
list(set = set, get = get,
     setinverse = setinverse,
     getinverse = getinverse)

}


## similar to the example, the second function will calculate the inverse of the matrix from the above function
## it will check to see if the inverse has been previously calculated using solve. If it has been calculated it will use the stored result in the cache and skip the calculation
## if not it will compute the inverse using solve and setinverse in the future cache


cacheSolve <- function(x, ...) {
  inverse <-x$getinverse()
  if(!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
    ## getting the previously cached inverse if exists
  }
    ## else calculates it
  data <- x$get()
  inverse <- solve(data, ...)
  x$setinverse(inverse)
  return(inverse)
  ## Return a matrix that is the inverse of 'x'
}
