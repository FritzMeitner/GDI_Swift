func PrintSomeNumbers(UpperLimit a:Int, LowerLimit b:Int)
{
  for printer in b...a
  {
  print(printer)
  }
}

func GetSomeCock()->String
{
  return "Cock"
}
var TestA:Int = 5
var TestB:Int = 10
print(GetSomeCock())
PrintSomeNumbers(UpperLimit: TestB, LowerLimit: TestA)