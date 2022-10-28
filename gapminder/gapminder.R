gapminder <- read_csv("data/gapminder_data.csv")
view(gapminder)

##Task Number One
#Defining a defensive function that calculates the Gross Domestic Product of  
#Denmark from the data available in the gapminder dataset. 

calcGDP <- function(dat, year=NULL, country=NULL) {
  if(!is.null(year)) {
    dat <- dat[dat$year %in% year, ]
  }
  if (!is.null(country)) {
    dat <- dat[dat$country %in% country,]
  }
  gdp <- dat$pop * dat$gdpPercap
  
  new <- cbind(dat, gdp=gdp)
  return(new)
}

#Result of function
denmark <- calcGDP(gapminder, country = "Denmark")
view(denmark)

#Task 2
#A script that loops over each country in the gapminder dataset, 
#tests whether the country starts with a ‘B’ , and prints out whether the life expectancy 
#is smaller than 50, between 50 and 70, or greater than 70. 
gapminder <- read.csv("data/gapminder_data.csv")
unique(gapminder$continent)


lowerThreshold <- 50
upperThreshold <- 70
candidateCountries <- grep("^B", unique(gapminder$country), value = TRUE)

for (iCountry in candidateCountries) {
  tmp <- mean(gapminder[gapminder$country == iCountry, "lifeExp"])
  
  if(tmp < lowerThreshold) {
    cat("Average Life Expectancy in", iCountry, "is less than", lowerThreshold, "\n")
  } else if(tmp > lowerThreshold && tmp < upperThreshold) {
    cat("Average Life Expectancy in", iCountry, "is between", lowerThreshold, "and", upperThreshold, "\n")
  } else {
    cat("Average Life Expectancy in", iCountry, "is greater than", upperThreshold, "\n")
  }
  rm(tmp)
}




