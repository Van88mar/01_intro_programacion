posicion<-0

Sumamultiplos<-0

A <- c(seq(1,999,by =1))

for  (i in A)
  
{(posicion<-posicion+1)
  
  if(i%%3==0 | i%%5==0) 
    
    (Sumamultiplos<- Sumamultiplos+ i)}

print(Sumamultiplos)