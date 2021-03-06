#' Get a badge for the download count of your package
#'
#' Input your github name and repo name,
#' this function will feedback the download count of your package.
#'
#' @param your_github_name character
#' @param your_github_repo character
#' @param type character copy it.
#'
#' @return character
#' @import glue
#' @import cli
#' @export
#' @examples
#' add2blog::badge_download(
#' your_github_name = 'JiaxiangBU'
#' ,your_github_repo = 'add2prep'
#' ,type = 'total')

badge_download <- function(
    your_github_name = 'JiaxiangBU'
    ,your_github_repo = 'add2prep'
    ,type = c('total')
){
    text = glue('  [![GitHub All Releases](https://img.shields.io/github/downloads/{your_github_name}/{your_github_repo}/{type}.svg)](https://github.com/JiaxiangBU/add2prep)')
    text %>% cat
    clipr::write_clip(text)
    cat('\n\n')
    glue::glue('This text is on your system clipboard, copy it above into your README.md') %>%
        cli::rule(center = ., col = "red")
}
