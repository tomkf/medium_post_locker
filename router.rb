require_relative 'controller'



class Router
  # is init. with the controller (the controller contains the view)
  def initialize(controller)
  @controller = controller
  @running = true
    end

def run # this command runs the app
  puts '------------------------------------'
  puts 'Welcome to your Medium pocket reader'
  puts '------------------------------------'
  list_options while @running
end

  def list_options
    puts '----------------------------'
    puts 'What do you want to do next?'
    puts '----------------------------'
    puts "1. List posts
    2. Save post for later
    3. Read post
    4. Mark post as read
    5. Exit "
    user_input = gets.chomp.to_i
    if user_input == 5
      @running = false
      puts 'Goodbye'
    end
    user_option(user_input)
  end

  def user_option(user_input)
    case user_input
    when 1
     @controller.list_posts
    when 2
      @controller.save_post
    when 3
      @controller.read_post
    when 4
      @controller.check_off
      end
  end
end
