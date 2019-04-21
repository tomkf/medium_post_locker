require_relative 'repo'
require_relative 'view'
require_relative 'model'
require 'open-uri'
require 'nokogiri'
require ‘pry’


class Controller
  # is initialized with a repository argument,  creates a view
  attr_accessor :view, :repo

  def initialize(repo)
    @repo = repo
    @view = View.new
  end

  # following commands issued from router....

  def save_post
  url_path = "https://medium.com/" += @view.get_pathway 
  file = open(url_path).read
    doc = Nokogiri::HTML(file)
    title = doc.search("h1").first.text
    paragraphs = doc.search(".sectionLayout--insetColumn > .graf--p")
    content = paragraphs.map(&:text).join("\n\n")
    author = doc.search(".postMetaHeader a.ds-link").first&.text
    post_obj = {:url => url_path, :title => title, :post_author => author, :content => content}
    post_instance = Post.new(post_obj)
    @repo.add_post(post_instance)
    #updates view
  end

  def read_post
    # gives command to take post from repo, display it in the view
  end

  def check_off
    # gives command to view to update the corresponding check-box
  end
end

# any action dealing w/ data delegated to repo.
# any puts/get handled by view
# any need, follow the flow and code it right away
# test regularly
# For each user story, you need to code an action (an instance method) in the controller.

# think of the controller as being passed the repo, it will create a view that it contains
# it can create models....the post class







