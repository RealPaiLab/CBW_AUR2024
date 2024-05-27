if (!requireNamespace("plotrix", quietly = TRUE)) install.packages("plotrix")

suppressMessages(require(plotrix))

#' show data missingness as a chequered matrix
plotMissing <- function(x,xlab="columns",
		ylab="rows",border=NA) {
	
	x <- !is.na(x)
	class(x) <- "numeric"
	color2D.matplot(x,show.values=FALSE,axes=FALSE,
		cs1=c(1,0),cs2=c(1,0),cs3=c(1,0),border=border,
		cex=0.8,
		xlab=xlab,ylab=ylab)
}