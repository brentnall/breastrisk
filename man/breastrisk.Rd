\name{breastrisk}
\alias{breastrisk}
\alias{brm}
\alias{denresid}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~
Define a density residual object.
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This creates an object to calculate a breast density residual score (DRS).
}
\usage{
breastrisk(age, bmi, density, risk)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{age}{
%%     ~~Describe \code{df} here~~
Woman's age.
}
  \item{bmi}{
%%     ~~Describe \code{m} here~~
Body mass index (kg/m2).
}
  \item{density}{
%%     ~~Describe \code{maxT} here~~
BI-RADS breast density (1 = fatty, 2 = scattered, 3 = het. dense, 4 = dense).
}
  \item{risk}{
10y risk \% (0-100\%) from a model without breast density.
  }
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
A breastrisk S4 class object.
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
Adam Brentnall
}
\note{
%%  ~~further notes~~
In development.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##Simulate data                                                                                                                                                                                                  
mybrm <- brm(50,25,2,3)

summary(mybrm)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{risk}% use one of  RShowDoc("KEYWORDS")
