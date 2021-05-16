rmarkdown::render("MyDashboard.Rmd", flex_dashboard(theme = "flatly"))

View(bonds_MAR)



# calcul

GeomMeans <- function(x){ # x est en pourcentage
  
  x <- x/100 + 1
  GeM <- (prod(x)^(1/length(x))-1)*100
  return(round(GeM, digits = 2))
  
}


# actions
Mydata <- share_EGY
Mydata <- arrange(Mydata, desc(ValeurAction))
Mydata <- Mydata[c(-1,-2,-3), ]
Mydat <- top_n(Mydata, 5, ValeurAction)

SS <-  Mydat$Nom_entreprise
Mydata <- Mydata %>% filter(Nom_entreprise %in% SS)


