## SitiSoraya
## Reference: https://github.com/lgreski/datasciencectacontent/blob/master/markdown/rprog-breakingDownMakeVector.md

## This function creates matrix and returns the inverse matrix.

## I personally think that setMatrix() function is not required because the object x contains the value of matrix that was passed as an argument
## into makeCacheMatrix() function once it is instantiated.

makeCacheMatrix <- function(x = matrix()) {
        
        invMatrix <- NULL
        
        getMatrix <- function(){
                x
        }
        
        setInvMatrix <- function(inv){
                invMatrix <<- inv
        }
        
        getInvMatrix <- function(){
                invMatrix
        }
        
        ## Gives the name, for e.g. 'get' to the getMatrix() function defined above.
        
        list(get = getMatrix, setInv = setInvMatrix, getInv = getInvMatrix)
}

## This function computes inverse of the matrix returned by makeCacheMatrix (i.e. the inverse of x)

cacheSolve <- function(x, ...) {
        
        invMatrix <- x$getInv()
        
        if(!is.null(invMatrix)){
                message("Retrieving the inverse matrix from the cache")
                return(invMatrix)
        }
        
        getData <- x$get()
        invMatrix <- solve(getData,...)
        x$setInv(invMatrix)
        return(invMatrix)
 }
