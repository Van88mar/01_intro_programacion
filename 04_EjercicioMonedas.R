coins <- c(1,2,5,10,20,50,100,200)


findChange <- function(money, numCoins) {
  if (numCoins ==1)
    return(1)
  s <- 0
  for (i in 1:numCoins) {
    remain <- money-coins[i]
    if(remain==0)
      s <- s+1
    if(remain>0)
      s <- s+findChange(remain,i)
  }
  return(s)
}
print(findChange(200,length(coins)))