data <- data.frame(
  driver_id = 1:8,
  accidents = c(3,1,4,0,2,5,0,1),  # Dependent Varibles
  years = c(2,1,3,1,2,5,1,4),      # Exposure
  Age = c(25,30,45,22,35,50,28,40) # Indepeendent Varibles
)
data

Model_no_offset = glm(accidents~Age, family = poisson(link = "log"), data = data)
summary(Model_no_offset)
exp(coef(Model_no_offset))
new_data <- data.frame()
predict(Model_no_offset)