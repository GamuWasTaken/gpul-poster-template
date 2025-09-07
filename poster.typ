

#set page(
  paper: "a4",
  flipped: true,
  fill: gradient.linear(
    rgb("#2bb2c5"), rgb("#2bc370"),
    dir: ttb
  ),
  margin: (top: 6em, x: 2em, bottom: 2em),
  header: text(fill: white, size: 3em, weight: "bold")[school.gpul.org]
)
#set align(center)
#set text(font: "FreeSans")

#show heading.where(level: 1): text.with(size: 3em)
#show heading.where(level: 2): text.with(size: 2em)

//
// {
//   date: "13/12/2023",
//   room: "2.10",
//   name: "patata",
//   desc: "con salsa",
//   logo: "bevy.png"
// }
//
#let input = sys.inputs.data
// #let date = datetime(json.decode(input).date)
#let (day, month, year) = json.decode(input).date.split("/")
#let date = datetime(day: int(day), month: int(month), year: int(year))

#let date = date.display("[weekday] [day] [month repr:long]")

#block(
  fill: white,
  spacing: 1em,
  inset: 2em,
  radius: 7%,
)[
  #grid(
    rows: (1fr, 1fr, 1fr, 10%)
  )[
  #grid(columns: (15%, 1fr, 15%),
    image("logo_bevy.svg"),
    heading(level: 1)[Arquitectura ECS con Bevy como ejemplo],
    image("logo_gpul.svg")
  )
  ][    
    == #date de 18:30 a 20:30
    == Aula 2.10 - Facultade de Informática
  ][
    == Una forma no oop friendly para crear aplicaciones complejas de forma clara, sencilla y extensible. Con Bevy game engine en Rust para un desarrollo anti boilerplate
  ][
    == Siguenos en redes sociales: #strong("@gpul_")
  ]
]
