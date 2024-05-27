# add noise to mouse data for EDA 

library(clValid)
library(dataExplore)
data(mouse)

xpr <- mouse[,2:7]
pheno <- data.frame(
    ID=c("M1","M2","M3","NC1","NC2","NC3"), 
    type=c(rep("Mesenchymal",3), rep("NeuralCrest",3))
)

# no missing data
plotMissing(xpr, border="grey90")

# plot dendrogram.
plotDendro_clr(
    xpr,
    pheno, 
    groupPal=list(type="Spectral"), 
    topVar=nrow(xpr)
)

# add missingness to the data
xpr_miss <- xpr ;
i <- sample(1:nrow(xpr), 50,TRUE); 
j <- sample(1:ncol(xpr),50, TRUE); 
for (k in 1:50) xpr_miss[i[k],j[k]] <- NA
xpr_miss[20:50,5] <- NA
plotMissing(xpr_miss)

# now try to plot dendrogram. 
plotDendro_clr(xpr_miss, pheno, groupPal=list(type="Spectral"),
    topVar=nrow(blah)
)

# get rid of the missing values
xpr_miss <- na.omit(xpr_miss)

# how many values are left?
dim(xpr_miss)

# now plot the dendrogram after clustering
plotDendro_clr(xpr_miss, pheno, groupPal=list(type="Spectral"),
    topVar=nrow(blah)
)
