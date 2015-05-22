
library(ggplot2)
library(animint)
library(servr)

p1 <- ggplot() + 
  geom_point(aes(Sepal.Length, Sepal.Width, colour = Species, 
                 clickSelects = Species), data = iris) + 
  ggtitle("Sepal Data")
p2 <- ggplot() + 
  geom_point(aes(Petal.Length, Petal.Width, colour = Species, 
                 showSelected = Species), data = iris) + 
  ggtitle("Petal Data")

animint2dir(list(sepal = p1, petal = p2, 
                 title = "My Animint Plot", 
                 selector.types=list(Species="multiple")), 
            out.dir = "iris_animint", 
            open.browser = F)
servr::httd("iris_animint")
