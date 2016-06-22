## Caching the Inverse of a Matrix:
## This function creates a special "matrix" object that can cache its inverse.
##This function creates special matrix and a list to
## set and get the matrix as well as set ang get inverse of matrix

makeCacheMatrix <- function(xCacheMatrix = matrix()) {
        invMatrix <- NULL
        set <- function(y) {
                xCacheMatrix <<- y
                invMatrix <<- NULL
        }
        get <- function() xCacheMatrix
        setInverse <- function(inverse) invMatrix <<- inverse
        getInverse <- function() invMatrix
        list(set = set,
             get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}

## This function computes the inverse of the special "matrix" created by 
## makeCacheMatrix above. If the inverse has already been calculated (and the 
## matrix has not changed), then it should retrieve the inverse from the cache.
## Return a matrix that is the inverse of 'xCacheMatrix'

cacheSolve <- function(xCacheMatrix, ...) {
        invMatrix <- xCacheMatrix$getInverse()
        if (!is.null(invMatrix)) {
                message("getting cached data")
                return(invMatrix)
        }
        mat <- xCacheMatrix$get()
        invMatrix <- solve(mat, ...)
        xCacheMatrix$setInverse(invMatrix)
        invMatrix
}
