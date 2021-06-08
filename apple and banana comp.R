apple <- read.fasta(choose.files())
head(apple)
apple_seq <- apple$DT000572.1
head(apple_seq)
banana <- read.fasta(choose.files())
head(banana)
banana_seq <- banana$CF569230.1
head(banana_seq)
table(apple_seq)
table(banana_seq)
var.test(table(apple_seq), table(banana_seq))
var.test(table(banana_seq), table(apple_seq))
r_from_f <- function(f,df1,df2){
  return(sqrt(f/(f + (df1/df2))))
}
r_from_f(0.7683353,3,3)
r_from_f(1.301515,3,3)
0.7519997-0.6591634
comp_plot <- function(seq1,seq2){
  par(nfrow = c(1,2))
  barplot(table(seq1), col = 1:4)
  barplot(table(seq2), col = 1:4)
}
comp_plot(banana_seq,apple_seq