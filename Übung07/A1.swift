//Übung 7 A1 bis A3 UwU

print("test123")

let meaningOfLife:Int = 42
let testand = 50
var Name:String = "Fritz"
print("my name is \(Name)")
var st = String(meaningOfLife, radix: 16, uppercase: true) //print as hex
var st2 = String(meaningOfLife, radix: 2) //print as binary
Name = "?$%"
print(st)
print(st2)
var testandst = String(testand, radix: 2)
print(testandst)
print(meaningOfLife | testand)
print(meaningOfLife & testand)

if meaningOfLife%42 == 0 {
  print("everything is alright in the world")
}