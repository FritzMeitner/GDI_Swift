//Blatt 7 aufgabe 5

var nums = [1,2,3,5]
var alsonums = [4,6,7,8]

print(nums[2])
alsonums[2] = 42
print(alsonums[2])
var concanums = nums + alsonums
print(concanums)
concanums += [5]
print(concanums)
for i in 0...3
{
  print(nums[i])
}
