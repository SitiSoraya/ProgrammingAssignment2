## SitiSoraya

## This function creates matrix and returns the inverse matrix
makeCacheMatrix <- function(x = matrix()) {
        
        invMatrix <- NULL
        
        setMatrix <- function(y){
                x <<- y
                invMatrix <<- NULL
        }
        
        getMatrix <- function(){
                x
        }
        
        setInvMatrix <- function(inv){
                invMatrix <<- inv
        }
        
        getInvMatrix <- function(){
                invMatrix
        }
        
        list(setMatrix = setMatrix, getMatrix = getMatrix, setInvMatrix = setInvMatrix, getInvMatrix = getInvMatrix)
}

## This function computes inverse of the matrix returned by makeCacheMatrix (i.e. the inverse of x)

cacheSolve <- function(x, ...) {
        
        invMatrix <- x$getInvMatrix()
        
        if(!is.null(invMatrix()){
                message("Retrieving the inverse matrix from the cache")
                return(invMatrix)
        }
        
        myMatrix <- x$getMatrix()
        invMatrix <- solve(myMatrix,...)
        x$setInvMatrix(invMatrix)
        return(invMatrix)
 }
