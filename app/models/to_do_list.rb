class ToDoList < ActiveRecord::Base
	has_many :todo_items
end
