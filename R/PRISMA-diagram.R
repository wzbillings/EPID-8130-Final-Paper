###
# PRISMA diagram
# Zane Billings
# 2021-12-06
# This script generates a PRISMA diagram for study inclusion.
###

library(here)
library(PRISMA2020)
library(DiagrammeRsvg)
library(rsvg)

dat <- read.csv(here::here("data", "PRISMA-data.csv")) |>
  PRISMA_data()

dg <- PRISMA_flowdiagram(dat, previous = FALSE, other = FALSE,
                         fontsize = 12)

pth <- here::here("figures", "PRISMA-diagram.png")

dg |>
  # There is no argument to make the plotsize bigger so I had to hack
  # into the guts of PRISMA2020 package and do it myself.
  PRISMA2020:::PRISMA_gen_tmp_svg_() |>
  rsvg::rsvg_png(
    file = pth,
    width = 1600
  )
