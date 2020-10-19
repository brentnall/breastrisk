\name{BreastRisk-class}
\Rdversion{1.1}
\docType{class}
\alias{BreastRisk-class}
\alias{initialize,BreastRisk-method}

\title{Class \code{"BreastRisk"}}
\description{
%%  ~~ A concise (1-5 lines) description of what the class is. ~~
Breast density residual score (DRS) calculation
}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("BreastRisk", age, bmi, density, risk)}.
%%  ~~ describe objects here ~~ 
}
\section{Slots}{
  \describe{
    \item{\code{age}:}{Object of class \code{"integer"} ~~ }
    \item{\code{bmi}:}{Object of class \code{"numeric"} ~~ }
    \item{\code{density}:}{Object of class \code{"numeric"} ~~ }
    \item{\code{risk}:}{Object of class \code{"numeric"} ~~ }
    \item{\code{denresid}:}{Object of class \code{"numeric"} ~~ }
    \item{\code{adjrisk}:}{Object of class \code{"numeric"} ~~ }
  }
}
\section{Methods}{
  \describe{
    \item{initialize}{\code{signature(.Object = "BreastRisk")}: ... }
    \item{summary}{\code{signature(object = "BreastRisk")}: ... }
	 }
}
\references{
%%  ~~put references to the literature/web site here~~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%%  ~~objects to See Also as \code{\link{~~fun~~}}, ~~~
%%  ~~or \code{\linkS4class{CLASSNAME}} for links to other classes ~~~
}
\examples{
showClass("BreastRisk")
}
\keyword{classes}
