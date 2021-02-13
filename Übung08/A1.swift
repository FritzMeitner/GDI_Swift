//Schleifen



let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)

//boards with either ladders or snakes
board[3] = 8
board[6] = 11
board[9] = 9
board[10] = 2
board[14] = -10
board[19] = -11
board[22] = -2
board[24] = -8

var square = 0 //player position
var diceRoll = 0 //moves determined by 8-sided die

print("Game Starting at square \(square)")

var gameOver = false

while square != finalSquare{
diceRoll = Int.random(in: 1...8)
switch square + diceRoll {
    case finalSquare:
      print("Starting \(square)")
      print("diceRoll \(diceRoll)")
      print("destination \(square + diceRoll)")
      print("Game Over")
      square = finalSquare
    case let newSquare where newSquare > finalSquare:
      print("Starting \(square)")
      print("diceRoll \(diceRoll)")
      print("destination \(square + diceRoll)")
      print("Re-Roll")
      print()
    default:
      print("Starting \(square)")
      print("diceRoll \(diceRoll)")
      square += diceRoll
      print("destination \(square)")
      print("instruction \(board[square])")
      square += board[square]
      print("result \(square)")
      print()
  }
}