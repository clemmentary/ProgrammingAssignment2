## Coursera R Programming Assignment 2: Lexical Scoping
## Caching the Inverse of a Matrix

## makeCacheMatrix creates a special "matrix" object that
## can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
      inv <- NULL            #
      set <- function(y) {
            x <<- y
            m <<- NULL
      }
      get <- function() x 
      setinverse <- function(inverse) inv <<- inverse
      getinverse <- function() inv
      list(set = set, get = get, 
           setinverse = setinverse, 
           getinverse = getinverse)
      
}      
      
      

## This function computes 

cacheSolve <- function(x, ...) {
      ## Return a matrix that is the inverse of 'x'
      
      
      
}
