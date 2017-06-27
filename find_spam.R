d <- read.table("data", sep = "\t", header = F)

dk <- split(d, d$V1)

dk_ham <- as.data.frame(dk[1])
ham_mail <- as.character(dk_ham$ham.V2)
dk_spam <- as.data.frame(dk[2])
spam_mail <- as.character(dk_spam$spam.V2)

prob_U_ham <- length(grep("win|won|awarded|winner|U|!", ham_mail))/nrow(dk_ham)
prob_U_spam <- length(grep("win|won|awarded|winner|U|!", spam_mail))/nrow(dk_spam)

if (!is.null(grep("win|won|awarded|winner|U|!",ham_mail[1000]))){
response <- "not spam"
} else {
response <- "spam"}

#with above keywords, 70% spam, 30% ham

#spam word
#win|won|awarded|winner|you|U|
