library(plot3D); library(rgl); library(plot3Drgl)

volc <- reshape2::melt(volcano)  

with(volc, scatter3D(x = Var1, y = Var2, z = value, ticktype="detailed", pch=16, 
                     xlab="longitude", ylab="latitude", zlab="depth, km", main=""))
plotrgl(lighting = TRUE, smooth = TRUE, cex=2)

title3d(main = "Earthquakes off Fiji", line=4, cex=2)

next3d(clear = F)
title3d("Richter", cex = 2, line = 2)
title3d("Magnitude", cex = 2, line = 0.8)


next3d(clear = F) 