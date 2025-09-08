#import "@preview/cades:0.3.0"

#set page(flipped: true, fill: orange, margin: 30pt)
#set align(center + horizon)
#set box(fill: white, inset: 20pt, width: 100%, height: 100%)

#show heading.where(level: 1): set text(size: 3em) 
#show heading.where(level: 2): set text(size: 3em) 
#show heading.where(level: 3): set text(size: 1.6em)

#let rad = 80pt

#grid(
  columns: (1fr, 300pt),
  rows: (1fr, 300pt),
  gutter: 30pt,

  
  grid.cell(colspan: 2)[#box(radius: (top: rad))[
    #grid(
      columns: (100pt, 1fr),
      image("logo_bevy.svg"),
      [ = Arquitectura ECS con Bevy como ejemplo ]
    )
    #line(length: 100%)
    === Una forma no oop friendly de hacer aplicaciones de forma clara sencilla y extendible. Con Bevy un game engine en Rust para un desarrollo anti boilerplate
  ]],
  grid.cell[#box(radius: (bottom-left: rad, top-right: rad))[
    == Miercoles, 13 de diciembre\
    == 13:30 a 14:00\
    == Aula 2.10
  ]],
  grid.cell[#box(radius: (bottom-right: rad, top-left: rad))[
    #cades.qr-code("school.gpul.org", width: 95%, error-correction: "H")
    #place(
      center + horizon,    
      image("school-logo.png", width: 40%)
    )
  ]]
)

