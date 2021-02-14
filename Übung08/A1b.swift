
func faculty(_ Zahl: Int) -> Int {
	var res = 1

	for i in 1...Zahl{
  	res = res * i
	}
	return res
}

print(faculty(10))

//kleines 1 * 1
for i in stride(from: 1, to: 11, by: 1) {
  for j in stride(from: 1, to: 11, by: 1) {
  print(i * j)
  }
}

enum OrtExistiertNichtException: Error {
	case yeet
}

func neuerOrt(_ Ort: String) throws -> String {
	if treasureQuest[Ort] == nil {
		throw OrtExistiertNichtException.yeet
	} else
	{
	return treasureQuest[Ort]!
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
	let aktuellerOrtNeu = try neuerOrt(aktuellerOrt)
	print("Laufe von \(aktuellerOrt) zu \(aktuellerOrtNeu)")
  aktuellerOrt = aktuellerOrtNeu
	}
	catch {
		print("so wies aussieht existiert der Ort nicht")
		schatzGefunden = true
	}
  if aktuellerOrt == "Schatz" {
    schatzGefunden = true
    } 
  
}

//do catch funktioniert nicht :c