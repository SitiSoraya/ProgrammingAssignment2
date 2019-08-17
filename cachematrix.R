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

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
