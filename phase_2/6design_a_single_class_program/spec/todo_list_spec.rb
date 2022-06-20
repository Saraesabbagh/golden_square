require 'todo_list'

#Make a list of examples
#1
# todo_list =TodoList.new
# todo_list.list => []

RSpec.describe TodoList do
  context "given no tasks" do
    it "has and empty list" do
      todo_list =TodoList.new
      expect(todo_list.list).to eq []
    end
  end

# #2
# todo_list = TodoList.new
# todo_list.add("wash the car")
# todo_list.list => ["wash the car"]
  context "given a task" do
    it "has the task in the list" do
      todo_list = TodoList.new
      todo_list.add("wash the car")
      expect(todo_list.list).to eq ["wash the car"]
    end
  end 

# #3
# todo_list = TodoList.new
# todo_list.add("wash the car")
#todo_list.add("wash the dog")
# todo_list.list => ["wash the car", "wash the dog"]
  context "given two tasks" do
    it "has both tasks in the list" do
      todo_list = TodoList.new
      todo_list.add("wash the car")
      todo_list.add("wash the dog")
      expect(todo_list.list).to eq ["wash the car", "wash the dog"]
    end
  end 

# #4
# todo_list = TodoList.new
# todo_list.add("wash the car")
#todo_list.add("wash the dog")
#todo_list.complete("wash the car")
# todo_list.list => [ "wash the dog"]
  context "when we complete a tasks" do
    it "removes the task in the list" do
      todo_list = TodoList.new
      todo_list.add("wash the car")
      todo_list.add("wash the dog")
      todo_list.complete("wash the car")
      expect(todo_list.list).to eq [ "wash the dog"]
    end
  end 

# #5
# todo_list = TodoList.new
# todo_list.add("wash the car")
#todo_list.add("wash the dog")
#todo_list.complete("wash the sheep")
# todo_list.list #fails "No such task."
  context "when we try to complete a non existant task" do
    it "fails" do
      todo_list = TodoList.new
      todo_list.add("wash the car")
      todo_list.add("wash the dog")
      todo_list.complete("wash the sheep")
      expect { todo_list.complete("wash the sheep") }.to raise_error "No such task."
    
    end
  end 
end

