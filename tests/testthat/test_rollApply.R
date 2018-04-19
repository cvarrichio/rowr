library(testthat)

test_that('rollApply works', {
  expect_equal(rollApply(c(1,2,3),sum), c(6,5,3))
})

check_for_pbapply <- function() {
  if (system.file(package='pbapply')=='')
    skip('pbapply not available')
}

test_that('rollApply with progress bar works', {
  expect_equal(rollApply(c(1,2,3),sum,progressbar=TRUE), c(6,5,3))
})