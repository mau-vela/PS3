###S3

#1
##Create function for door and creating class door
#Ask a user a number from 1 to 3 

choose_door <- function(){
  #say the user to select door
  number <- readline(prompt="Enter door number from 1 to 3: ")
  number <- as.numeric(number)
  #Check if it is included from 1 to 3
  if (number %in% 1:3){
    #put class door
    class(number) <- "door"
    return(number)
  } 
  #otherwise stop
  else{
    stop("Choose an integer number between 1 to 3")
  }
}

#example
door <- choose_door()


#b
#Generic method Playgame
PlayGame <- function(x){UseMethod("PlayGame")}

#create function, input should be class door
PlayGame.door <- function(x){ 
  #Check if object is door class
  if (inherits(x, "door")){
    #randomly choose the door where the car is
    car <- sample(1:3, 1)
    #case winning car
    if(x==car){ 
      print("You win the car")
    }
    #case winning goat
    else{ 
      print("You win a goat")
    }
  }
  #if input is not class door
  else{
    stop("Object should be class door")
    
  }
}

#example 
PlayGame.door(door)


#S4



