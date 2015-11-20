## These functions cach a matrix and its inverse matrix. If there is no cach of
##a inveres matirx, the second function calculates it and save it to the list produced by the first function..

## This function creates a list containing 4 functions.

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y){
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinv <- function(inv) m <<- inv
        getinv <- function(m)
        list(set = set, get = get, setmean = setmean, getmean = getmean)
}


## This function  first judges if the inverse matirix is already calculated and 
## stored in a list produced by the function above. If not, it calculates the 
##inverse matrix.

cacheSolve <- function(x, ...) {
        inv <- x$getinv()
        in(!is.null(inv)){
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data)
        x$setinv(inv)
        inv
}
