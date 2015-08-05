setClassUnion("missingOrNULL", c("missing", "NULL"))

# The primary class for all gpuVector objects

#' @title gpuVector Class
#' @description This is the 'mother' class for all
#' gpuVector objects.  All other gpuVector classes
#' inherit from this class but there are no current
#' circumstances where this class is used directly.
#' 
#' There are multiple child classes that correspond
#' to the particular data type contained.  These include
#' \code{igpuVector}.
#' @name gpuVector-class
#' @rdname gpuVector-class
#' @author Charles Determan Jr.
#' @seealso \code{\link{igpuVector-class}}
#' @export
setClass('gpuVector', 
         slots = c(address="externalptr"))

# setClass('gpuVector',
#          representation("VIRTUAL"),
#          validity = function(object) {
#              if( !length(object@object) > 0 ){
#                  return("gpuVector must be a length greater than 0")
#              }
#              TRUE
#          })


#' @title igpuVector Class
#' @description An integer vector in the S4 \code{gpuVector}
#' representation.
#' @section Slots:
#'  \describe{
#'      \item{\code{address}:}{An integer vector object}
#'  }
#' @name igpuVector-class
#' @rdname igpuVector-class
#' @author Charles Determan Jr.
#' @seealso \code{\link{gpuVector-class}}
#' @export
setClass("igpuVector",
        contains = "gpuVector",
        validity = function(object) {
            if( typeof(object) != "integer"){
                return("igpuVector must be of type 'integer'")
            }
            TRUE
})

# setClass("igpuVector",
#          slots = c(object = "vector"),
#          contains = "gpuVector",
#          validity = function(object) {
#              if( typeof(object) != "integer"){
#                  return("igpuVector must be of type 'integer'")
#              }
#              TRUE
#          })


#' @title fgpuVector Class
#' @description An float vector in the S4 \code{gpuVector}
#' representation.
#' @section Slots:
#'  \describe{
#'      \item{\code{address}:}{Pointer to a float typed vector}
#'  }
#' @name fgpuVector-class
#' @rdname fgpuVector-class
#' @author Charles Determan Jr.
#' @seealso \code{\link{gpuVector-class}}
#' @export
setClass("fgpuVector",
         contains = "gpuVector",
         validity = function(object) {
             if( typeof(object) != "float"){
                 return("fgpuVector must be of type 'float'")
             }
             TRUE
         })


#' @title dgpuVector Class
#' @description An double vector in the S4 \code{gpuVector}
#' representation.
#' @section Slots:
#'  \describe{
#'      \item{\code{address}:}{Pointer to a double typed vector}
#'  }
#' @name dgpuVector-class
#' @rdname dgpuVector-class
#' @author Charles Determan Jr.
#' @seealso \code{\link{gpuVector-class}}
#' @export
setClass("dgpuVector",
         contains = "gpuVector",
         validity = function(object) {
             if( typeof(object) != "double"){
                 return("dgpuVector must be of type 'double'")
             }
             TRUE
         })
