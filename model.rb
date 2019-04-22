class Post
  attr_reader :post_author, :post_title, :url_pathway, :content, :check_mark
  attr_writer :check_mark

  def initialize(post_obj = {})
    @url_pathway = post_obj[:url]
    @post_title = post_obj[:title]
    @post_author = post_obj[:post_author]
    @content = post_obj[:content]
    @check_mark = false
  end

  def mark_as_read
    @check_mark = true
  end
end
