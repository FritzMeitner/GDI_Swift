var Zufallszahlen = [Int]()
for _ in 1..<10 {
	Zufallszahlen.append(Int.random(in: 1...1000))
}

func aufSummieren(_ nums: [Int],_ Filter:Int) -> Int
{
	var Filterzahlen = [Int]()
	switch Filter {
		case 1:
			Filterzahlen = nums.filter{$0%2 == 1}
		case 2:
			Filterzahlen = nums.filter{$0%2 == 0}
		default:
			Filterzahlen = nums 
	}
	var res:Int = 0
	for numbers in Filterzahlen
	{
		res += numbers
	}
	print(Filterzahlen)
	return res
}
print(aufSummieren(Zufallszahlen, 2))

func filda(_ nums:[Int],_ prädikat: ([Int]) -> [Int]) -> [Int]
{
	return prädikat(nums)
}

func gerade_f(_ nums: [Int]) -> [Int] {
	var tmp = [Int]()
	for numbers in nums {
		if numbers%2 == 0 {
			tmp.append(numbers)
		}
	}
	return tmp
}

func ungerade_f(_ nums: [Int]) -> [Int] {
	var tmp = [Int]()
	for numbers in nums {
		if numbers%2 == 1 {
			tmp.append(numbers)
		}
	}
	return tmp
}

func prim_f(_ nums: [Int]) -> [Int] {
	var res = [Int]()
	for i in 0..<nums.count {
		var Aufnahme = true
		for j in 2..<nums[i] {
			if nums[i]%j == 0 {
				Aufnahme = false
			}
		}
		if Aufnahme == true {
			res.append(nums[i])
		}
	}
	return res
}
func pow(_ base: Int,_ power: Int) -> Int
{
	var i = 1
	var res = 1
	while i <= power {
		res = res * base
		i += 1
	}
	if power == 0 {
		return 0
	}
	return res
}
func zweierpot_f(_ nums: [Int]) -> [Int] {
	var res = [Int]()
	for i in 1...10 {
		let num = pow(2, i)
		for numbers in nums{
		if numbers == num {
			res.append(numbers)
		}
		}
		}
	return res	
}

func random_f(_ nums: [Int]) -> [Int] {
	var res = [Int]()
	for numbers in nums {
		let inters = Int.random(in: 1...2)
		if inters == 2	{
			res.append(numbers)
		}
	}
	return res
}

Zufallszahlen[0] = 2
Zufallszahlen[1] = 512
print(filda(Zufallszahlen, random_f))