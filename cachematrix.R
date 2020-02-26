# This function creates a matrix to cache the inverse of matrix. 
# First set the matrix, then get the matrix, set the inverse, get the inverse. 

makeCacheMatrix <- function(x = matrix()) {
        # Clear the cache first        
        m <- NULL
        # Set the matrix
        # `<<-` to assign a value in different environment from the current environment.
        set <- function (y) {
                x<<-y
                m<<-NULL
        }
        # Get the matrix        
        get <- function() x
        # Set the inverse        
        setinverse <- function (inverse) m <<- inverse
        # Get the inverse        
        getinverse <- function() m
        list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}

# The list from previous will be used as the input to cacheSolve()
# This function returns the inverse of matrix returned by above makeCacheMatrix. 

cacheSolve <- function(x, ...) {
        m <- x$getinverse()
        # If the inverse is calculated and cache is not empty, then get it from cashe.         
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        # If the cache is empty, 
        data <- x$get()
        # calculate the inverse, 
        m <- solve(data, ...)
        # set the inverse value in the cache and then return it.
        x$setinverse(m)
        m
