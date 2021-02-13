class BlogPost
{
  var Title:String?
  var Body:String?
  var Author:String?
  var numberOfComments:Int = 0
  var RandomComputedProperty:Int {
      return (numberOfComments + 10)*3
  }

  func addComment() 
  {
    numberOfComments += 1
  }

  init()
  {

  }
}

var post = BlogPost()
post.Title = "YEEEET"
if let placeholder = post.Title {
  print(placeholder)
}
if post.Title != nil 
{
  print(post.Title!)
}
post.addComment();
print(post.RandomComputedProperty)

post.addComment();
print(post.RandomComputedProperty)