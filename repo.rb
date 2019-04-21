require_relative 'posts.rb'
require_relative 'posts.csv'
require 'csv'


class Repository
  attr_writer :repo_array
  def initialize(csv_filepath = nil)
    @repo_array = []
    @csv_filepath = csv_filepath
  end


  def add_post(post_instance)
    @repo_array.push(post_instance)
CSV.open(filepath, 'a') do |csv|
  csv << [post_instance.url_pathway, post_instance.post_title, post_instance.post_author, post_instance.content, post_instance.check_mark]
  end
end
