## SitiSoraya
## Reference: https://github.com/lgreski/datasciencectacontent/blob/master/markdown/rprog-breakingDownMakeVector.md

## I personally think that setMatrix() function is not necessary because the object x contains the value of matrix that was passed as an argument
## into makeCacheMatrix() function once it is instantiated.

makeCacheMatrix <- function(x = matrix()) { ## makeCacheMatrix() function creates matrix and returns the inverse matrix

        invMatrix <- NULL                   ## The variable is initialize as null, which will holds the inverse matrix
        
        setMatrix <- function(y){           ## setMatrix will sets the value of matrix
                x <<- y
                invMatrix <<- NULL          ## Clears the value of matrix
        }
        
        getMatrix <- function(){            ## getMatrix returns the value of matrix 
                x
        }
        
        setInvMatrix <- function(inv){      ## setInvMatrix sets the value of inverse matrix
                invMatrix <<- inv
        }
        
        getInvMatrix <- function(){         ## getInvMatrix returns value of inverse matrix
                invMatrix
        }
        
        ## Gives the name, for e.g. 'get' to the getMatrix() function defined above.
        
        list(set = setMatrix, get = getMatrix, setInv = setInvMatrix, getInv = getInvMatrix)
}

## cacheSolve() function computes inverse of the matrix returned by makeCacheMatrix (i.e. the inverse of x). If inverse has
## been calculated and the matrix has not been changed, then this function will retrieve its inverse from the cache.

cacheSolve <- function(x, ...) {
        
        invMatrix <- x$getInv()
        
        ## Caching the inverse matrix from cache
        
        if(!is.null(invMatrix)){
                message("Retrieving the inverse matrix from the cache")
                return(invMatrix)
        }
        
        ## The following line of codes compute the inverse of the matrix returned by makeCacheMatrix
        
        getData <- x$get()
        invMatrix <- solve(getData,...)
        x$setInv(invMatrix)
        return(invMatrix)
 }
