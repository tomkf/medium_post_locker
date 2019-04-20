class Controller
    # is initialized with a repository
    attr_accessor :view, :repo
  
    def initialize(repo)
      @repo = repo
      @view = View.new
    end
    end
  
  
  
  
  
  # any action dealing w/ data delegated to repo.
  # any puts/get handled by view
  # any need, follow the flow and code it right away
  # test regularly
  # For each user story, you need to code an action (an instance method) in the controller.
  
  # think of the controller as being passed the repo, it will create a view that it contains
  # it can create models....the post class
  
  