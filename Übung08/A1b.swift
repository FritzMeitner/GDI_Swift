var fac = 6
var res = 1

for i in 1...fac{
  res = res * i
}

print(res)

//kleines 1 * 1
for i in stride(from: 1, to: 11, by: 1) {
  for j in stride(from: 1, to: 11, by: 1) {
  print(i * j)
  }
}

let treasureQuest =
[
  "Alte Eiche": "Bärenhöhle",
  "Start": "Wasserfall",
  "Schlossruine": "Alte Eiche",
  "Schiffswrack": "Kirchturm",
  "Bärenhöhle": "Schatz",
  "Wasserfall": "Schiffswrack",
  //"Kirchturm": "Schlossruine"
]
var schatzGefunden = false
var aktuellerOrt = "Start"
while schatzGefunden == false {
  do {
    try
  print("Laufe von \(aktuellerOrt) zu \(treasureQuest[aktuellerOrt]!)")
  aktuellerOrt = treasureQuest[aktuellerOrt]!
  if aktuellerOrt == "Schatz" {
    schatzGefunden = true
    } catch
     {
      print("Ort existiert nicht")
    }
  }
}

//do catch funktioniert nicht :c