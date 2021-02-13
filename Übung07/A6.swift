//Blatt 1 aufgabe 6

//array where some of the values are string representation of numbers
var strs = ["yeet","yoot","1","dück","42","drei","9"] 
//creating an optional array where the values from strs will be parsed into
var parsedints = [Int?]()

//for loop over strs that extends parsedints to the needed length and then parses in the strings...fail -> nil
for i in 0...strs.count-1 {
  parsedints += [nil]
  parsedints[i] = Int(strs[i])
}

//creating the array that will only contain the actual integers from the first array where values are only added when
//the corresponding value in parsedints isn't nil
var actualints = [Int]()
for ints in parsedints 
{
  if ints != nil {
    actualints += [ints!]
  }
}
print(actualints)