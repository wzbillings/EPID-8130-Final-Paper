library(DiagrammeR)
library(DiagrammeRsvg)
library(rsvg)

grViz(diagram = "digraph dag {
  graph [overlap = false, layout = neato, nodesep = 10, pad = 1]
  
  node [fontname = arial, shape = rectangle, fillcolor = palegreen, style = filled]
  agus1973
  atmar2011
  atmar2008
  atmar2014b
  bernstein2015
  dolin1971
  frenck2012
  gordon1956
  graham1994
  keswick1985
  leon2011
  lindesmith2005
  lindesmith2003
  madore1990
  mateo2020
  okhuysen1995
  parker1994
  seitz2011
  teunis2008
  treanor1988
  
  node [fontname = arial, shape = rectangle, fillcolor = white]
  ajami2012
  atmar2014a
  ball1999
  czako2012
  czako2015
  dai2015
  erdman1989a
  erdman1989b
  gary1987
  gray1994
  griffin2015
  hesse2016
  hutson2005
  hutson2002
  kavanagh2011
  kirby2020
  kirby2014
  kirby2016
  liu2021
  lobue2006
  messner2014
  newman2015a
  newman2015b
  newman2016
  patin2020
  ramani2017
  reeck2010
  swanstrom2014
  treanor1993
  williams2019
  wyatt1974
  
  edge [length = 10]
  ajami2012 -> atmar2008
  atmar2014a -> bernstein2015
  ball1999 -> graham1994
  czako2012 -> {atmar2008 kavanagh2011 reeck2010}
  czako2015 -> atmar2014b
  dai2015 -> frenck2012
  erdman1989a -> keswick1985
  erdman1989b -> keswick1985
  gary1987 -> keswick1985
  gray1994 -> graham1994
  griffin2015 -> leon2011
  hesse2016 -> atmar2011
  hutson2005 -> graham1994
  hutson2002 -> graham1994
  kavanagh2011 -> {atmar2008 reeck2010}
  kirby2020 -> lindesmith2005
  kirby2014 -> {lindesmith2005 leon2011}
  kirby2016 -> {leon2011 lindesmith2005}
  liu2021 -> {teunis2008 seitz2011 leon2011}
  lobue2006 -> {lindesmith2005 harrington2002}
  messner2014 -> {teunis2008 seitz2011 atmar2014b frenck2012}
  newman2015a -> {leon2011 lindesmith2005}
  newman2015b -> {seitz2011 leon2011}
  newman2016 -> {leon2011 seitz2011}
  patin2020 -> leon2011
  ramani2017 -> atmar2014b
  reeck2010 -> atmar2008
  swanstrom2014 -> lindesmith2005
  treanor1993 -> madore1990
  williams2019 -> {leon2011 seitz2011}
  wyatt1974 -> {dolin1971}
}
  ") |>
  DiagrammeRsvg::export_svg() |>
  charToRaw() |>
  rsvg::rsvg_png(
    file = "C:/Users/Zane/My Drive/Class/Y2S1/EPID-8130/papers-dag.png",
    width = 1600
  )