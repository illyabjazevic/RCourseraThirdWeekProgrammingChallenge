x<-3*diag(2)
print(x)
print(is.matrix(x))
y<-solve(x)
print(y)
#This function creates a special "matrix" object that can cache its inverse.
# I assume that is invertible
# I also assume that is square
# I am using 2 * (the identity matrix 2x2) by default


#This function creates a Global Variable that "caches" the Inverse Matrix
makeCacheMatrix<-function(myInvertibleSquareMatrix=2*diag(2))
{
  print("This is the original matrix")
  print(myInvertibleSquareMatrix)
  
  #This Line creates a Global Variable and stores the Inverse Matrix
  myInverseMatrix<<-(solve(myInvertibleSquareMatrix))
  
  cat("\n")
  
  print("This is the Inverse Matrix")
  print(myInverseMatrix)
}

w<-makeCacheMatrix(x)

#This function checks if the Inverse Matrix was already calculated
cacheSolve<-function(myInvertibleSquareMatrix=2*diag(2))
{
  if(!exists("myInverseMatrix"))
  {
    print("This is the Inverse Matrix")
    newInverse<-(solve(myInvertibleSquareMatrix))
    print(newInverse)
    
    cat("\n")
    
    print("This is the original matrix")
    print(myInvertibleSquareMatrix)
  }
  else
  {
    print("We do not need to calculate the Inverse.")
    print("It was already done by the previous function")
  }
}

z<-cacheSolve(x)

#Important. If you want to run the second function before the first.
#You need to restart R to erase the Inverse Function that was already calculated.

