## The function cache the inverse of a matrix

## Function below create matrix that cache its inverse
makeCacheMatrix <- function(x = matrix()) {
  set<-function(y){
    x<<-y
    inver<<-NULL
  }
  
  get <- function() {
    x
  }
 
  setInver <- function(inver) {
    i <<- inver
  }
  
  getInver <- function() {
    inver
  }
  
  list(set = set, get = get,setInver = setInver,getInver = getInver)
}


## Function below compute the inverse of the matrix returned by function above

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inver <- x$getInver()
  if( !is.null(inver) ) {
    message("getting cached data")
    return(inver)
  }
  data <- x$get()
  m <- solve(data) %*% data
  x$setInver(inver)
  inver      
}
