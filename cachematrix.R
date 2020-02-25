## This function creates a matrix to cache the inverse of matrix. 
## First set the matrix, then get the matrix, set the inverse, get the inverse. 
## <<-
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
## Clear the cache first        
        m <- NULL
## Set the matrix
## `<<-` to assign a value in different environment from the current environment.
        set <- function (y) {
                x<<-y
                m<<-NULL
        }
        get <- function() x
        setinverse <- function (inverse) m <<- inverse
        getinverse <- function() m
        list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## this list from previous will be used as the input to cacheSolve()

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
