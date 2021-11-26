#' Compute a tidy correlation
#'
#' @param data input dataframe
#' @param var1 name of first column
#' @param var2 name of second column
#'
#' @return a dataframe with Pearson correlation and P-value
#' @export
#'
#' @importFrom stats cor.test
#' @importFrom broom tidy
#' @importFrom dplyr pull select
#'
#' @examples
#' compute_corr(mtcars, mpg, wt)
compute_corr <- function(data, var1, var2){

  # compute correlation ----
  cor.test(
    x = data %>% pull({{var1}}),
    y = data %>% pull({{var2}})
  ) %>%
    # tidy up results ----
  tidy() %>%
    # retain and rename relevant bits ----
  select(
    correlation = estimate,
    pval = p.value
  )

}
