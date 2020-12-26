#' @title A Shiny Circle Input
#'
#' @import shiny
#'
#' @param inputId The input id
#'
#' @return the color of the selected circle
#'
#' @export
#'
#' @examples

circleInput <- function(inputId) {

  htmltools::tagList(
    htmltools::htmlDependency(
      name    = "circleInput",
      version = utils::packageVersion("shinylearnrdemo"),
      package = "shinylearnrdemo",
      src     = "js",
      script  = "circleInput.js",
      stylesheet = "styles.css"
    ),
    htmltools::tags$div(
      # change this to use our css
      class = "circleInput",
      id = inputId,
      `data-input-id` = inputId,
      htmltools::HTML(
          "<svg class='circ' height='100' width='100' xmlns='http://www.w3.org/2000/svg'>
        <circle id ='circ_red' cx='50' cy='50' r='40' stroke='black' stroke-width='3' fill='red'/>
      </svg>
      <svg id ='circ_blue' class='circ' height='100' width='100' xmlns='http://www.w3.org/2000/svg'>
        <circle id ='circ_blue' cx='50' cy='50' r='40' stroke='black' stroke-width='3' fill='blue' />
      </svg>
      <svg id ='circ_yellow'class='circ' height='100' width='100' xmlns='http://www.w3.org/2000/svg'>
        <circle id ='circ_yellow' cx='50' cy='50' r='40' stroke='black' stroke-width='3' fill='yellow'/>
      </svg>"
        )
    )
  )
}
