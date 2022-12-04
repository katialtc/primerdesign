
# Modified from Vasco and Leese PrimerMiner tutorial

# PACKAGE
library("PrimerMiner")


batch_config("configcytb.txt")


batch_download("taxa_small.csv", "configcytb.txt")


fastafiles <- list.files("FAMILY/", full.names=T)


fastafiles_export <- paste("FAMILY/", list.files("FAMILY/"), sep="/")


selectivetrim(fastafiles[i], fastafiles_export[i], trimL=0, trimR=0, gaps=0, minsequL=100)
}


alignments <- list.files("FAMILY/", full.name=T) # find files

pdf("plot_alignments.pdf", height=8, width=100)
plot_alignments(alignments)
dev.off()
