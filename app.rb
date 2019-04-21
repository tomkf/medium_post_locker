require_relative 'router'
require_relative 'controller'
require_relative 'model'
require_relative 'repo'
require_relative 'view'
require 'csv'

csv_file = File.join(__dir__, 'posts.csv')
repo = Repository.new(csv_file)
controller = Controller.new(repo)
router = Router.new(controller)

# Start the app
router.run
