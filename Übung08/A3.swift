var Cock:UInt = 16
switch true {
	case Cock%8 == 0:
		print("Teilbar durch 8")
		fallthrough
	case Cock%4 == 0:
		print("Teilbar durch 4")
		fallthrough
	case Cock%2 == 0:
		print("Teilbar durch 2")
		fallthrough
	default:
		print("Teilbar durch 1")
}