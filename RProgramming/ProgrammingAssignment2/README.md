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


The first function, `makeVector` creates a special "vector", which is
really a list containing a function to

1.  set the value of the vector
2.  get the value of the vector
3.  set the value of the mean
4.  get the value of the mean

<!-- -->

    makeVector <- function(x = numeric()) {
            m <- NULL
            set <- function(y) {
                    x <<- y
                    m <<- NULL
            }
            get <- function() x
            setmean <- function(mean) m <<- mean
            getmean <- function() m
            list(set = set, get = get,
                 setmean = setmean,
                 getmean = getmean)
    }

The following function calculates the mean of the special "vector"
created with the above function. However, it first checks to see if the
mean has already been calculated. If so, it `get`s the mean from the
cache and skips the computation. Otherwise, it calculates the mean of
the data and sets the value of the mean in the cache via the `setmean`
function.

    cachemean <- function(x, ...) {
            m <- x$getmean()
            if(!is.null(m)) {
                    message("getting cached data")
                    return(m)
            }
            data <- x$get()
            m <- mean(data, ...)
            x$setmean(m)
            m
    }

### Assignment: Caching the Inverse of a Matrix

Matrix inversion is usually a costly computation and their may be some
benefit to caching the inverse of a matrix rather than compute it
repeatedly (there are also alternatives to matrix inversion that we will
not discuss here). Your assignment is to write a pair of functions that
cache the inverse of a matrix.

Write the following functions:

1.  `makeCacheMatrix`: This function creates a special "matrix" object
    that can cache its inverse.
2.  `cacheSolve`: This function computes the inverse of the special
    "matrix" returned by `makeCacheMatrix` above. If the inverse has
    already been calculated (and the matrix has not changed), then the
    `cachesolve` should retrieve the inverse from the cache.

Computing the inverse of a square matrix can be done with the `solve`
function in R. For example, if `X` is a square invertible matrix, then
`solve(X)` returns its inverse.

For this assignment, assume that the matrix supplied is always
invertible.

In order to complete this assignment, you must do the following:

1.  Clone the GitHub repository containing the stub R files at
    [https://github.com/rdpeng/ProgrammingAssignment2](https://github.com/rdpeng/ProgrammingAssignment2)
2.  Edit the R file contained in the git repository and place your
    solution in that file (please do not rename the file).
3.  Commit your completed R file into YOUR git repository and push your
    git branch to your GitHub account.
4.  Submit to Coursera the URL to your GitHub repository that contains
    the completed R code for the assignment.

### Grading

This assignment will be graded via peer assessment.
