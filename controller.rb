require_relative 'repo'
require_relative 'view'
require_relative 'model'
require 'open-uri'
require 'nokogiri'


class Controller
  # is initialized with a repository argument, creates a view
  attr_accessor :view, :repo

  def initialize(repo)
    @repo = repo
    @view = View.new
  end

  # following commands issued from router....

def list_posts 
send_to_view = @repo.list_all
@view.display_posts(send_to_view)
end

  def save_post
    path = @view.get_pathway 
  url_path = "https://medium.com/" + path 
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
   list_posts
   user_input = @view.select
   desired_instance = @repo.list_all
   @view.read_post(desired_instance[user_input])
    # gives command to take post from repo, display it in the view
  end

  def check_off
    send_to_view = @repo.list_all
    user_submit = @view.select
    desired_instance = send_to_view[user_submit]
    desired_instance.mark_as_read
    list_posts
  end
end



