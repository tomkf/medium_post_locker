# It should be connected to a posts.csv file to make our app persistent.
# if you encounter a csv invalid byte sequence in us-ascii error while parsing the csv,
# this can be solved with an option passed to the CSV.foreach call:

require_relative 'posts.rb'
require_relative 'posts.csv'

class Repository
  attr_writer :repo_array
  def initialize(csv_filepath = nil)
    @repo_array = []
    @csv_filepath = csv_filepath
  end
end
