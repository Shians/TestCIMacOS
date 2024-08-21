test_that("Foo",
{
    tabix_path <- system.file("methy_subset.tsv.bgz", package = "TestCIMacOS", mustWork = TRUE)
    tabix_file <- Rsamtools::TabixFile(tabix_path)
    expect_silent(out <- Rsamtools::scanTabix(tabix_file, param = GenomicRanges::GRanges("chr7:6703892-6730431")))
})
