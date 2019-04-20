#this file will run the actuall app
# router.run


# This time we didn't give you the app.rb.
#  Don't be afraid, just take the problem from the end.
#  We know that the purpose of the app.rb file is to call router.run.
#   This means you need to instantiate a router which is an instance of our Router class.
#   OK so that's a Router.new(controller). That means we need a controller...
#    Following this train of thoughts will lead you to the whole code.


class Router

    initialize(controller)
    @controller = controller
    @running = true
    end

    def run 
        puts "------------------------------------"
       puts "Welcome to your Medium pocket reader"
       puts  "------------------------------------"
    while @running
    list_options
    end

    def list_options 
        puts "----------------------------"
        puts "What do you want to do next?"
        puts "----------------------------"
        puts "1. List posts
        2. Save post for later
        3. Read post
        4. Mark post as read
        5. Exit "
       user_input = gets.chomp.to_i
       if user_input == 5 
        @running = false 
        puts "Goodbye"
       end
       user_option(user_input)
    end


    def user_option(user_input)
        case user_input
        when 1
         @controller.save_post
        when 2
        @controller.read_post
        when 3 
       @controller.check_off 
        end
    end
    end
    


    