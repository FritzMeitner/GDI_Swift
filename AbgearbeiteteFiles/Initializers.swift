class Person
{
  var name:String = ""
  var age:Int = 0

  init(_ a:Int, _ n:String)
  {
    name = n;
    age = a;
  }
}

var Jochen = Person(5, "Jochen")
print(Jochen.name)