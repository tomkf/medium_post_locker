require_relative 'model'
require 'csv'


class Repository
  attr_writer :repo_array
  def initialize(csv_filepath)
    @repo_array = []  #<==== write from the CSV file an array of instances....
     @csv_filepath = csv_filepath
    # CSV.foreach(@csv_file_path) do |row|  
    #   @repo_array.push(Recipe.new(row[0], row[1], row[2], row[3], row[4]))
    # end
  end

  def list_all 
return @repo_array
  end

  def add_post(post_instance)
    @repo_array.push(post_instance)
CSV.open(filepath, 'a') do |csv|
  csv << [post_instance.url_pathway, post_instance.post_title, post_instance.post_author, post_instance.content, post_instance.check_mark]
  end
end

end
