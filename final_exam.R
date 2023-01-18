dt <- read_csv("data/children_per_woman_total_fertility.csv") 
view(dt)
dt2 <- read_csv("data/children_per_woman_total_fertility_2.csv") 
view(dt2)
dt3 <- read_csv("data/children_per_woman_total_fertility_3.csv") 
view(dt3)
dt4 <- read_csv("data/children_per_woman_total_fertility_4.csv") 
view(dt4)
dt5 <- read_csv("data/life_expectancy_years.csv") 
view(dt5)
dt6 <- read_csv("data/life_expectancy_years_2.csv") 
view(dt6)
dt7 <- read_csv("data/life_expectancy_years_3.csv") 
view(dt7)
dt8 <- read_csv("data/population_past_future.csv") 
view(dt8)
dt9 <- read_csv("data/population_past_future_2.csv") 
view(dt9)
dt10 <- read_csv("data/population_past_future_3.csv") 
view(dt10)
dt11 <- read_csv("data/mortality.csv") 
view(dt11)
dt12 <- read_csv("data/mortality_2.csv") 
view(dt12)
dt13 <- read_csv("data/mortality_3.csv") 
view(dt13)
dt14 <- read_csv("data/world_gdp.csv") 
view(dt14)
dt15 <- read_csv("data/world_gdp_2.csv") 
view(dt15)
dt16 <- read_csv("data/income.csv") 
view(dt16)

view(dt5)

ggplot(data = dt3, mapping = aes(x = years, y = average, group = 1)) +
  geom_point(size = 3) +
  geom_line(colour = "red") +
  labs(title = "Worldwide Average Female Fertility Rates",
       x = "Time Periods",
       y = "Fertility Rate") +
  theme_minimal()

ggplot(data = dt4, mapping = aes(x = years, y = average, group = 1)) +
  geom_point(size = 2) +
  theme(axis.text.x = element_text(angle = 90)) +
  geom_line(colour = "red") +
  labs(title = "Worldwide Regional Average Female Fertility Rates",
       x = "Time Periods",
       y = "Fertility Rate") +
  facet_wrap(~region) 

ggplot(data = dt6, mapping = aes(x = years, y = average, group = 1)) +
  geom_point(size = 3) +
  geom_line(colour = "red") +
  labs(title = "Worldwide Average Life Expectancy Rates",
       x = "Time Periods",
       y = "Life Expectancy Rate") +
  theme_minimal()

ggplot(data = dt7, mapping = aes(x = years, y = average, group = 1)) +
  geom_point(size = 2) +
  theme(axis.text.x = element_text(angle = 90)) +
  geom_line(colour = "red") +
  labs(title = "Worldwide Continental Average Life Expectancy Rates",
       x = "Time Periods",
       y = "Life Expectancy Rate") +
  facet_wrap(~region) 

ggplot(data = dt9, mapping = aes(x = years, y = population, group = 1)) +
  geom_point(size = 3) +
  geom_line(colour = "red") +
  labs(title = "Global Population Development",
       subtitle = "1.0e+10 = 10 billion",
       x = "Time Periods",
       y = "Average Population") +
  theme_minimal()

ggplot(data = dt10, mapping = aes(x = years, y = population, group = 1)) +
  geom_point(size = 2) +
  theme(axis.text.x = element_text(angle = 90)) +
  geom_line(colour = "red") +
  labs(title = "Continental Population Development",
       subtitle = "1e+09 = 1 billion",
       x = "Time Periods",
       y = "Average Population") +
  facet_wrap(~continent) 

ggplot(data = dt11, mapping = aes(x = years, y = average_rate_both, group = 1)) +
  geom_point(size = 3) +
  geom_line(colour = "red") +
  labs(title = "Global Mortality Rates",
       subtitle = "per 1000 adults",
       x = "Time Periods",
       y = "Mortality Rate") +
  theme_minimal()

ggplot(data = dt12, mapping = aes(x = years, y = average_rate_both, group = 1)) +
  geom_point(size = 2) +
  theme(axis.text.x = element_text(angle = 90)) +
  geom_line(colour = "red") +
  labs(title = "Continental Mortality Rates",
       subtitle = "per 1000 adults",
       x = "Time Periods",
       y = "Mortality Rates") +
  facet_wrap(~continent) 

ggplot(data = dt13, mapping = aes(x = years, y = average_rate, group = 1)) +
  geom_point(size = 2) +
  theme(axis.text.x = element_text(angle = 90)) +
  geom_line(colour = "red") +
  labs(title = "Global Mortality Rates by Sex",
       subtitle = "per 1000 adults",
       x = "Time Periods",
       y = "Mortality Rates") +
  facet_wrap(~sex) 

ggplot(data = dt14, mapping = aes(x = years, y = gdp, group = 1)) +
  geom_point(size = 3) +
  geom_line(colour = "red") +
  labs(title = "Global GDP Development",
       subtitle = "1e+13 = 10 Trillion USD",
       x = "Year",
       y = "GDP") +
  theme_minimal()

ggplot(data = dt15, mapping = aes(x = years, y = gdp, group = 1)) +
  geom_point(size = 2) +
  theme(axis.text.x = element_text(angle = 90)) +
  geom_line(colour = "red") +
  labs(title = "Global Regional GDP Development",
       subtitle = "1e+13 = 10 Trillion USD",
       x = "Year",
       y = "GDP") +
  facet_wrap(~region)

ggplot(data = dt16, mapping = aes(x = year, y = income, group = 1)) +
  geom_point(size = 2) +
  theme(axis.text.x = element_text(angle = 90)) +
  geom_line(colour = "red") +
  labs(title = "Global Income Development",
       subtitle = "1e+13 = 10 Trillion USD",
       x = "Year",
       y = "Income") +
  facet_wrap(~income_level)
