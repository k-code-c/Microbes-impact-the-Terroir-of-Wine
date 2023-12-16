## The diversity() and vegdist() functions require the R package "vegan" to be installed and loaded.
library("vegan")
ITS_2018_1_ <- read_excel("ITS_2018(1).xlsx", sheet = "Phylum")
## relAbunds will contain some extra baggage that we need to trim. In the lines below, I'm keeping just the 2nd through 9th columns of the data frame.
## Keep in mind that diversity() and vegdist() expect a community matrix to be passed to them. That's why I need to transpose relAbunds using the t() function.
#print(diversity(t(X16s_2018f[7:15])))
print(vegdist(t(ITS_2018_1_[2:9])))
#diversity(t(X16s_2018f[7:15]),index = "shannon")
#This is me and Victors Group project
##bray curtis btw