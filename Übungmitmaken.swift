for guests in 0...100 where (guests % 10) == 0 { /*for loops bei denen nur unter 
bestimmten bedingungen der loop looped */
  print("there are \(guests) guests getting new drinks")
}

let i = 8

switch i
{
  case 0: 
    print("i ist zerro")
    fallthrough

  case 2,4,6,8: print("i ist gerade und kleiner 10")
  case 10...20 where (i%2) == 1: print("ungerade und zwischen 50 und 60")

  default: print("Was anderes")
}

//Funktiowonen

func LinearFunction(X_Wert x:Double, Y_Null b:Double, Anstieg c: Double) -> Double
{
	return	(x*c) + b
}

let result = LinearFunction(X_Wert: 2.3,Y_Null: 5.0,Anstieg: 9.2)
print(result)

enum Planet
{
	case mercury
	case venus
	case earth
	case mars, jupiter , saturn, uranus, neptun
}

let myPlanet = Planet.earth
print(myPlanet)

//associated values