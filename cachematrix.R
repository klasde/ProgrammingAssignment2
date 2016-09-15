## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## function makeCacheMatrix takes a matrix as input
## output is a list contains four arguments
## it has set, get, set inverse, get inverse functions
makeCacheMatrix <- function(x = matrix()) {
	m<- NULL
	set <- function(y) {
		x<<-y
		m<<-NULL
	}
	get <-function() x
	setinverse <- function(solve) m<<-solve
	getinverse <- function() m
	list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)

}


## Write a short comment describing this function

## function cacheSolve takes the special list created above
## it output the solved matrix
## it first to check if it has been calculated
## if so return the value from cache without caululation
## otherwise, it will calculate and set the value in cache
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	m <- x$getinverse()
	if(!is.null(m)){
		message("getting cached data")
		return(m)
	}
	data <- x$get()
	m <- solve(data, ...)
	x$setinverse(m)
	m
}
