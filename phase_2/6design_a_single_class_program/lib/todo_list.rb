class TodoList
  def initialize
    @tasks =[]
  end

  def add(task)#task is a string representing an instructions
    #return nothing
    @tasks << task
  end
  
  def complete(task)#task is a string representing a task to mark complete
    #returns nothing
    #failes if the task doesn't exist
    fail "No such task." unless @tasks.include? task
    @tasks.delete(task)
  end

  def list 
    #returns a list of tasks added as strings. 
    #except the completed ones. 
    return @tasks
  end
end


