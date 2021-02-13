//blatt 7 aufgabe 7 Dictionaries I

var Tage = Dictionary<String, Bool>()
Tage["Montag"] = false
Tage["Dienstag"] = false
Tage["Mittwoch"] = false
Tage["Donnerstag"] = false
Tage["Freitag"] = false
Tage["Samstag"] = true
Tage["Sonntag"] = true
Tage["Montag"] = true

if Tage["Montag"] == true {
  print("Gehört zum Wochende")
} else {
  print("Gehört nicht zum Wochende")
}
print(Tage)

var SindDoublesCool = [Double:Bool]()
SindDoublesCool[3.0] = true
SindDoublesCool[4.2] = false
SindDoublesCool[6.9] = true
SindDoublesCool[12.0] = true

for Werte in SindDoublesCool{
  print(Werte.value)
  print(Werte.key)
}

var PrimZahlenFiesta=[Int:Bool]()
let limit = 100
for i in 1...limit {
  if(i == 1)
  {
    PrimZahlenFiesta[1] = false
  } else {
  var testgrenze = 2
  var prim = true
  while testgrenze < i {
    if i%testgrenze == 0
    {
      prim = false
      testgrenze = limit + 1
    }
    testgrenze += 1
    
  }
  PrimZahlenFiesta[i] = prim
}
}
var result = 0;
for nums in PrimZahlenFiesta {
  if nums.value == true {
    result += nums.key
    print(nums.key)
  }
}
print(result)