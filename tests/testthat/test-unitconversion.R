test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

test_that("Inputting a various values proceeds as expected", {

  # Testing that inputting a negative temperature does not break the code
  expect_no_error(moving_to_canada(5, -13, 15, 35))

  # Testing that inputting a string into the distance results in an error
  expect_error(moving_to_canada("five", 32, 15, 35))

  # Testing that decimal inputs are excepted
  expect_no_error(moving_to_canada(2.25, 75.4, 12.9, 12.5))

  # Testing that 0's are excepted as inputs, including changing the default
  expect_no_error(moving_to_canada(0, 0, 0, 0, 0))
})
