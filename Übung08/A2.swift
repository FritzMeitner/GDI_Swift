var Zufallszahlen = [Int]()
for _ in 1..<100 {
	Zufallszahlen.append(Int.random(in: 1...1000))
}
print(Zufallszahlen)
var NoSwaps = false
while NoSwaps == false {
	NoSwaps = true
	for i in 0...(Zufallszahlen.count - 2) {
		if Zufallszahlen[i] > Zufallszahlen[i+1] {
			let temp = Zufallszahlen[i]
			Zufallszahlen[i] = Zufallszahlen[i+1]
			Zufallszahlen[i+1] = temp
			NoSwaps = false 
		}
	}
}
print(Zufallszahlen)