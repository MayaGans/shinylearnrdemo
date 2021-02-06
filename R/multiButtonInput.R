buttonTextDivs <- function(text) {
  shiny::div(class = "single-button-choice", text)
}

#' @title A Shiny Circle Input
#' @import shiny
#' @param inputId The input id
#' @return the color of the selected circle
#' @export
#' @examples
multiButtonInput <- function(inputId, choices) {

  # we create a dependency on the package with the JS code
  # needed to bind this function with JS
  # the src can be found inside inst
  htmltools::tagList(
    htmltools::htmlDependency(
        name    = "multiButtonInput"
      , version = utils::packageVersion("shinylearnrdemo")
      , package = "shinylearnrdemo"
      , src     = "js"
      , script  = "multiButtonInput.js"
      , stylesheet = "styles.css"
    ),
    # we put our svg input inside a div
    htmltools::tags$div(
      class="JakesButtons",
          purrr::map(choices, buttonTextDivs)
    )
  )
}
