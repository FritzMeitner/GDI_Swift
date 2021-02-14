enum Fields 
{
	case field
	case ladder(size: Int)
	case snake(size: Int)
	case trampolin(a: Int, b:Int)
}
let finalSquare = 25
var MyField = [Fields]()
for _ in 0..<25 {
	MyField.append(Fields.field)
}
//ladders and snakes
MyField[3] = Fields.ladder(size: 8)
MyField[6] = Fields.ladder(size: 11)
MyField[9] = Fields.ladder(size: 9)
MyField[10] = Fields.ladder(size: 2)

MyField[11] = Fields.trampolin(a: 1, b:5)
MyField[12] = Fields.trampolin(a: 5, b:11)

MyField[14] = Fields.snake(size: 10)
MyField[19] = Fields.snake(size: 11)
MyField[22] = Fields.snake(size: 2)
MyField[24] = Fields.snake(size: 8)

//gamevariables
var square = 0
var diceroll = 0
var gameover = false 

//gameloop
while square != finalSquare {
	diceroll = Int.random(in: 1...6)
	switch square + diceroll {
		case finalSquare: 
			print("moving \(diceroll) from \(square) to \(finalSquare)")
			square = finalSquare
			print("Game OwOver")
		case let a where a > finalSquare: 
			print("starting on \(square)")
			print("rolled: \(diceroll)")
			print("too high")
			print("re-roll")
		default:
			print("starting on \(square)")
			print("rolled: \(diceroll)")
			square += diceroll
			print("destination \(square)")
			switch MyField[square] {
				case .field:
					print("A normal field")
					print("just go on to your next move")
				case .ladder(size: let s):
					print("You hit a ladder. congrats")
					print("Move forward \(s)")
					square += s
				case .snake(size: let s):
					print("you stepped on snek")
					print("move back \(s)")
					square -= s
				case .trampolin(a: let vor, b: let zuruck):
					print("you're on the trampoline. good luck")
					var extradice = Int.random(in: 1...6)
					print("you've rolled a \(extradice)")
					extradice = extradice%2
					if(extradice == 0) {
						print("move \(vor) forward")
						square += vor
					} else {
						print("move \(zuruck) backward")
						square -= zuruck
					}
			}
		}
		print()
	}



