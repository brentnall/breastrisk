##################################################
## LIBRARIES needed 
##################################################
##dyn.load("breastrisk.so")
########################################
## breastrisk class definitions
########################################



setClass(Class="BreastRisk",
         representation=representation(
             age="integer",
             bmi="numeric",
             density = "numeric",
             risk = "numeric",
             denresid="numeric",
             adjrisk="numeric"
             )
         )



## initialise class object
setMethod(
    f="initialize",
    signature="BreastRisk",
    definition=function(.Object, age, bmi, density, risk){

        ##check passed the correct arguments
##        if() {
##		stop(myerrormsg)
##	}

       
        ## age
       .Object@age <- age 

        ## bmi
       .Object@bmi<- bmi 

        ## age
       .Object@density <- density 

        ## age
       .Object@risk <- risk

        ## calc denresid
	drs <- as.double(1.0)

	denresid <- .C("denresid", as.integer(age), as.double(bmi), as.double(density), as.double(drs))

        drs <- denresid[[4]]
        ## Overal expected number of events assigned
        .Object@denresid <- drs

        adjrisk <- (1-exp(log(1-risk/100) * drs)) *100

	.Object@adjrisk <- as.double(adjrisk)

        ## Initialise
        return(.Object)
        
        }
)

## Friendly interface to S4 object
brm<- breastrisk <- function(age, bmi, density, risk){
    thisbrm<- new(
        Class="BreastRisk",
        age=as.integer(age),
        bmi=as.double(bmi),
        density=as.double(density),
        risk=as.double(risk)
    )

    return(thisbrm)
    }


## Summary method implementation (for users).
setMethod(
    f="summary",
    signature="BreastRisk",
    definition=function(object){
        
        print(paste0("Age: ", object@age, ", BMI: ", object@bmi, ", Density: ", object@density, ", Risk: ", object@risk, "%")) 

        print(paste0("** Adjusted risk: ", round(object@adjrisk,1), "% (DRS: ", round(object@denresid,2), ") **"))

    }

)


