class BlogPost
{
  var Title:String = ""
  var Body:String = ""
  var Author:String = ""
  var numberOfComments:Int = 0

  func addComment() 
  {
    numberOfComments += 1
  }
}

class EmbeddedPost : BlogPost
{
  override func addComment()
  {
    super.addComment()
    numberOfComments += 100
  }
  var SharedAt:String = ""
}

let myPost = BlogPost()
myPost.Title = "Ey Malla"
myPost.Body = "Bester Mann"
myPost.Author = "Rainer .W"

let mySecondPost = BlogPost()
mySecondPost.Title="Hellow"
mySecondPost.Body="yeet yoot 32"
mySecondPost.Author="Dennis"
mySecondPost.addComment()

print("Ich han geschriebne \(myPost.Author)")
print(mySecondPost.Title)

let myViralPost = EmbeddedPost()
myViralPost.addComment()
myViralPost.SharedAt = "Twiddä"
print("Number of Comments: \(myViralPost.numberOfComments) and it was shared on \(myViralPost.SharedAt)")