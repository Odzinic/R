library(rgl)
filePath <- "C:/Users/Admin/Downloads/R3DPlot_Test.csv"

inTable <- read.csv(file = filePath, header=TRUE, sep=",")

# Get coordinates from inTable
xCoord <- inTable$X
yCoord <- inTable$Y
zCoord <- inTable$Z

# Get N values
nValue <- inTable$N

# Classify N values
nClasses <- as.numeric(cut(nValue, 10))
inTable$Class <- nClasses

# Generate colour ramp
cols <- colorRampPalette(c("red", "blue"))
inTable$Colour <- cols(10)[nClasses]

plot3d(xCoord, yCoord, zCoord, size=10, col = inTable$Colour)




