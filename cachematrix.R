## The following two functions help to cache a matrix and its inverse so that the inverse doesn't have to be
##re-calculated everytime. The inverse is just recalled from the cache.

## This calculation caches the matrix and its inverse by setting the value of the matrix, getting the value
## of the matrix, setting the inverse, and getting the inverse.

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


## This function calculates the inverse of the matrix created by makeCacheMatrix.
##  If the inverse of the same matrix has already been calculate then it should retrieve the inverse
## from the cache rather than calculate it again.

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
