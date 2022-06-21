class Todo
    def initialize(task) # task is a string
      @task = task
      @mark_done = false
    end
  
    def task
        @task.to_s
      # Returns the task as a string
    end
  
    def mark_done!
        @mark_done = true
      # Marks the todo as done
      # Returns nothing
    end
  
    def done?
        @mark_done == true ? true : false
         
       
      # Returns true if the task is done
      # Otherwise, false
    end
  end
  