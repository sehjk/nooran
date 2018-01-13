context("removePHI")

test_that("removePHI removes PHI columns", {
  expect_equal(removePHI(data.frame(name = c("sehj","nikhil"),
                                    phone1 = c(12348,421279),
                                    color = c("red","yellow"),
                                    age = c(10,15))),
               data.frame(color = c("red","yellow"),
                          age = c(10,15)))
})
