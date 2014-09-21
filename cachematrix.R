## Coursera R Programming Assignment 2: Lexical Scoping
## Caching the Inverse of a Matrix

## makeCacheMatrix creates a special "matrix" object that
## can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
      inv <- NULL             # set inv value to NULL
      
      set <- function(y) {    # modify exisiting matrix from x to y
            x <<- y           # and set inv to NULL
            inv <<- NULL
      }
      
      get <- function() x     # return matrix x
      
      setinverse <- function(inverse) inv <<- inverse 
                              # set inv to argument inverse
      
      getinverse <- function() inv
                              # returns value of inv
      
      list(set = set, get = get, 
           setinverse = setinverse, 
           getinverse = getinverse)
      
}      
      
      

## cacheSolve computes inverse of matrix returned by makeCacheMatrix
## If the inverse has already been calculated (and matrix has not changed)
## then cacheSolve retrieves the inverse from cache

cacheSolve <- function(x, ...) {
      ## Return a matrix that is the inverse of 'x'
      
      inv <- x$getinverse() 
                              # calls getinverse function from makeCacheMatrix
      
      if(!is.null(inv)) {     # if value of inv is not null
            message("getting cached data")
            return(inv)       # print message and return inv
      }
                              # if value of inv is null
      data <- x$get()         # call get function and assign to data
      inv <- solve(data)      # calculate inverse of data 
      x$setinverse(inv)       # call setinverse function to assign inv value
      inv                     # return inv
      

      
      
}
