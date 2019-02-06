context("test-query-join")

test_that("print method doesn't change unexpectedly", {
  lf1 <- lazy_frame(x = 1, y = 2)
  lf2 <- lazy_frame(x = 1, z = 2)
  qry <- sql_build(left_join(lf1, lf2))

  expect_known_output(print(qry), test_path("test-query-join-print.txt"))
})