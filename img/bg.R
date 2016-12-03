library("ggplot2")
set.seed(12345)

n <- 500
y <- abs(rnorm(n))
x <- runif(n, min = 0, max = 100)
dat <- data.frame(x = x, y = y)

bgplot <- ggplot(dat, aes(x = x, y = y)) +
  geom_point(aes(color = x), size = 4, alpha = 0.4) +
  ylim(min(y), max(y) + 3) +
  scale_colour_gradientn(colours = rainbow(3, start = 0.2)) +
  theme(line = element_blank(),
        text = element_blank(),
        line = element_blank(),
        title = element_blank(),
        legend.position="none",
        panel.border = element_blank(),
        panel.background = element_blank())
bgplot

ggsave(filename = "bg.jpg", plot = bgplot, device = "jpeg", width = 18)