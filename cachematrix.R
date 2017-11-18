## Together, these functions create a matrix, calculate and cache its inverse, and get that inverse if the
## result is cached

## Creates a list of functions, that:
## 1) Set the value of the matrix
## 2) Get the value of the matrix
## 3) Set the value of the inverse matrix
## 4) Get the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
        s <- NULL
        set <- function(y){
                x <<- y
                s <<- NULL
        }
        get <- function() x
        set_inverse <- function(solve) s <<- solve
        get_inverse <- function() s
        list(set = set, get = get,
             set_inverse = set_inverse, 
             get_inverse = get_inverse)

}


## Calculates the inverse of the matrix from makeCacheMatrix, but first checks to see if the inverse is
## already stored in cache. If it is, it sets and returns the cached value instead of calculating it.

cacheSolve <- function(x, ...) {
        s <- x$get_inverse()
        if(!is.null(s)) {
                message("getting cached data")
                return(s)
        }
        data <- x$get()
        s <- solve(data, ...)
        x$set_inverse(s)
        s
}
