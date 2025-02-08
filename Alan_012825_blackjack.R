blackjack <- function(){
  house <- sample(2:21,1)
  player <- sample(2:21,1)
  if (house<player){
    print(player)
    print(house)
    print("You win")
  } else { 
    print(player)
  print(house)
  print("You lose") }
}

blackjack()
