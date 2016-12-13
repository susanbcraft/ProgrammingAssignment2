## The following two functions help to cache a matrix and its inverse so that the inverse doesn't have to be
##re-calculated everytime. The inverse is just recalled from the cache.

## This function creates a special "matrix" object that can cache its inverse.
##1. setting the value of the matrix
##2. getting the value of the matrix
##3. setting the inverse of the matrix
##4. getting the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
 inv <- NULL
+     set <- function(y) {
+         x <<- y
+         inv <<- NULL
+     }
+     get <- function() x
+     setInverse <- function(inverse) inv <<- inverse
+     getInverse <- function() inv
+     list(set = set,
+          get = get,
+          setInverse = setInverse,
+          getInverse = getInverse)
}


##This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
## If the inverse has already been calculated (and the matrix has not changed),
## then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
 inv <- NULL
+     set <- function(y) {
+         x <<- y
+         inv <<- NULL
+     }
+     get <- function() x
+     setInverse <- function(inverse) inv <<- inverse
+     getInverse <- function() inv
+     list(set = set,
+          get = get,
+          setInverse = setInverse,
+          getInverse = getInverse)
        }
