//Blatt 7 Übung 4 

var Tast:Int?
var Tbst:Int?
var Tcst = 15
Tast = 666
Tbst = nil
Tbst = Tast!
Tcst = Tbst!
Tast! = Tcst
print(Tbst!)

var Name:String?
Name = "Fritz"
if Name != nil
{
  print("Hello \(Name!)")
}
else 
{
  print ("Hello Günther")
}

if let tmpname = Name 
{
  print("hello \(tmpname)")
}
else 
{
  print("Hello Günther")
}

let printername = (Name ?? "Günther")
print(printername)
