# 加载包
install.packages("tidyverse")
library(tidyverse)

# 读取数据
d <- read_csv("data/city_day.csv")

# 查看数据
head(d)

# 简单画图
p <- ggplot(d, aes(x = PM2.5, y = PM10)) +
  geom_point() +
  ggtitle("空气质量数据：PM2.5 vs PM10")

print(p)

# 保存图片
ggsave("figures/plot.png", plot = p, width=8, height=5)

# 输出提示
cat("✅ 运行成功！图片保存在 figures/plot.png\n")