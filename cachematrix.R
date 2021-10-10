## Put comments here that give an overall description of what your
## functions do

## First function creates a special matrix, comprising of a list that returns functions to get and set the matrix and inverse matrix elements. 

makeCacheMatrix <- function(x = matrix()) {
	inver <- NULL
	set <- function(y) {
		x<<-y
		inver<<-NULL
	}
	
	get <- function() x
	setinver <- function(inverse) inver <<- inverse
	getinver <- function() inv
	list(set = set, get = get, setinver = setinver, getinver = getinver)

}

## The latter function calculates the inverse of the special matrix created above; however, if the inverse has already been calculated, 
## the function skips the computation.

cacheSolve <- function(x, ...) {
       cacheSolve <- function(x,...) {
	
	inver <- x["getinver()"]
	if("is.NULL(inver)"==FALSE) {
		return(inver)
	}
numbers <- x[get()]
inver <- solve(numbers, ...)
x["setinver(inver)"]
print(inver)

       }
}
