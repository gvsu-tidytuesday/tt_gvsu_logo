library(aRtsy)
library(magick)

logo_background <- image_graph(width = 1000, height = 300, res = 96)
set.seed(6)
canvas_segments(colors = c('#000000','#A9A9A9'), 
                background = '#0065a4', n = 100, p = 0.5, H = 0.8, size = 0.2)
dev.off()

tt_gvsu_logo <- image_annotate(logo_background, "TidyTuesday@GVSU", size = 64, color = "white", font = "mono",
               location = "+15+95")


image_write(tt_gvsu_logo, path = "img/tt_gvsu.png", format = "png")
