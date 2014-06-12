## There are two functions "makeCacheMatrix" and "cacheSolve" that create 
## a matrix and solve its inverse

## makeCacheMatrix defines a list of functions that do the following:
## 1. set the value of the matrix and store in the parent environment (env)
## 2. get the value of the matrix from the parent env
## 3. set the value of the inverse of the matrix and store in the parent env
## 4. get the value of the inverse of the matrix from the parent env.


makeCacheMatrix <- function(x = matrix()) {
	
	m <- NULL
	set <- function(y) {
		x <<- y 	#store matrix as variable "x" in parent env
		m <<- NULL	#define "m" as NULL variable in parent env
	}
	get <- function() x	#get value of matrix "m" from parent env
	
	setinv <- function(solve) m <<- solve #solve inverse and store as "m"
	
	getinv <- function() m 	#get value of "m" from parent env

	list(set = set, get = get,
		setinv = setinv, getinv = getinv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
