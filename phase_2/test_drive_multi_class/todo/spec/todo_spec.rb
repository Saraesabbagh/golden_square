require 'todo'

RSpec.describe Todo do
    it "returns the task as a string" do
        new_task = Todo.new("Coding")
        result = new_task.task
        expect(result).to eq "Coding"
    end

    it "returns true if the test is done" do
        new_task = Todo.new("coding")
        new_task.mark_done!
        result = new_task.done?
        expect(result).to eq true
    end

    it "returns false if the test is not done" do
        new_task = Todo.new("coding")
        result = new_task.done?
        expect(result).to eq false
    end
end