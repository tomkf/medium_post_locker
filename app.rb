require_relative 'router'
require_relative 'controller'
require_relative 'repo'

csv_file = File.join(__dir__, 'posts.csv')
repo = Repository.new(csv_file)
controller = Controller.new(repo)
router = Router.new(controller)

# Start the app
router.run

