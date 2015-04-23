## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##Create a function that takes matrix as argument that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(matrix) {
        x <<- matrix
        i <<- NULL
    }
    get <- function() {
         x
    }
    setinverse <- function(inverse) {
    	i <<- inverse
    }	
    getinverse <- function() {
             i
     }        
    list(set = set, get = get, setinverse = setinverse, 
         getinverse = getinverse)
}


## Calculate the inverse of the special matrix created with above
##function else reuse the functon if it has been cached. 
cacheSolve <- function(x, ...) {
	z <- x$getinverse()
    if(!is.null(z)) {
        message("getting cached data")
        return(z)
    }
    dat1 <- x$get()
    z <- solve(dat1, ...)
    x$setinverse(z)
    z
}
