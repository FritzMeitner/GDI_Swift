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

var rob1 = Roboter(name: "Dennis", 4, Antrieb.Lebensenergie)
var rob2 = Roboter("Jürgen")

print(rob1.name)
print(rob2.name)
print(rob1.introduce())
print(rob2.introduce())