# Its state:
# What do we need to store in a post to be able to serve the user stories?
# The answer will give you the instance variables.

# Its behavior:
# What transformations will we need to perform on a post?
# Which pieces of state will we need to expose to reading? to writing?
# The answers will give you the public instance methods.

# When you think you're done,
# test your class in irb, fix bugs, and move on to the next class.


# . Our program should be able to instantiate a Post with only a path.

require_relative 'repo.rb'

class Post
  # will manipulate the data in our program
  attr_reader :post_author, :post_title, :url_pathway, :content

  def initialize(url_pathway, post_title, post_author, content)
    @url_pathway = "https://medium.com/" + url_pathway
    @post_title = post_title
    @post_author = post_author
    @content = content
  end
end
