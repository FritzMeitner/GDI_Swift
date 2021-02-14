enum Antrieb {
	case Solarzelle
	case Biodiesel
	case Batterie
	case Lebensenergie
}

class Roboter {
	let name:String
	let beinzahl:Int
	let energiequelle:Antrieb
	init(name: String, _ b:Int,_ e:Antrieb)
	{
		self.name = name
		beinzahl = b
		energiequelle = e 
	}
	init(_ n: String)
	{
		name = n
		beinzahl = 2
		energiequelle = Antrieb.Batterie
	}
	func introduce() -> String {
		return "Hello my name is \(name). I have \(beinzahl) legs. And I run on \(energiequelle)"
	}
}

class Staubsogbot : Roboter {
	var füllstand = 0
	func saugen() {
		if(füllstand<100) {
			let müll = Int.random(in: 1...15)
			print("i suck \(müll)")
			füllstand += müll
		}
			else {
				print("\(füllstand)")
				print("voll")
			}
	}
	override func introduce() -> String {
			return "Hello my name is \(name). I have \(beinzahl) legs. And I run on \(energiequelle). I can suck"
	}
}

var sauger = Staubsogbot("Rolli")
while sauger.füllstand < 100 {
sauger.saugen()
}
sauger.saugen()
var rob1 = Roboter("Jochen")
print(sauger.introduce())
var robs = [Roboter]()
robs.append(sauger)
robs.append(rob1)
for robots in robs {
	print(robots.introduce())
}