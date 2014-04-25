### Introduction

Matrix inversion is usually a costly computation and their may be some
benefit to caching the inverse of a matrix rather than compute it
repeatedly. This R script consists of two functions and is able to cache 
potentially time-consuming computations. For example, taking the inverse 
of a matrix like we discussed above is typically a fast operation. 
However, for a huge matrices, it may take too long to compute the inverse, 
especially if it has to be computed repeatedly (e.g. in a loop). If the 
contents of the matrix are not changing, it may make sense to cache the 
value of the inverse so that when we need it again, it can be looked up in 
the cache rather than recomputed. In this Programming Assignment, we will 
take advantage of the scoping rules of the R language and how they can be 
manipulated to preserve state inside of an R object.

### Caching the Inverse of a Matrix

This script consists of two functions namely,

     1. makeCacheMatrix() - This function creates a special matrix object that can cache its inverse.
     2. cacheSolve()      - This function computes inverse of the special matrix returned by 'makeCacheMatrix' above.

<ins>__Key points:__</ins> If the inverse has already been calculated and the matrix has not changed, 
                           then the 'cacheSolve' function should retrieve the inverse of the matrix from the cache.


The first function, `makeCacheMatrix` creates a special "matrix", which is 
actually a list consisting of several functions which perform the following operations

1.  set the value of the input matrix.
2.  get the value of the input matrix.
3.  set the value of the matrix inverse.
4.  get the value of the matrix inverse.

<!-- -->

    makeCacheMatrix <- function(x = matrix()) {
  
        inv <- NULL
  
        set <- function(y = matrix()){
            x <<- y
            inv <<- NULL
        }
  
        get <- function(){
            x
        }
  
        setinv <- function(i){
            inv <<- i
        }
  
        getinv <- function(){
            inv
        }
  
        list(set = set, get = get, setinv = setinv, getinv = getinv)

    }


The following function calculates the inverse of the "special" matrix, created by the
'makeCacheMatrix' funtion. However, it first checks to see if the inverse has been
calculated already. If the inverse matrix is present, then the value is fetched from the
cache and all other steps are skipped. Otherwise, tf the inverse value is NULL, it means 
the value is not in the cache and the inverse of the "special" matrix is calculated first
using the 'solve' function and the inverse matrix value is set in the cache using the 
`setinv` function.


    cacheSolve <- function(x, ...) {
        
        inv <- x$getinv()
  
        if(!is.null(inv)){
            message("getting cached data")
            return(inv)
        }
  
        data <- x$get()
        inv <- solve(data, ...)
        x$setinv(inv)
        inv
  
    }

__@Author:__ Dipanjan Sarkar
