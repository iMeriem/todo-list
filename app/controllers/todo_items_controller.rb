class TodoItemsController < ApplicationController
	before_action : set_to_do_list
    before_action :set_todo_item, except: [:create]

	def create
     @todo_item  = @to_do_list.todo_items.create(todo_item_params)
     redirect_to @to_do_list
	end

def destroy
	@todo_item = @to_do_list.todo_item.find(params[:id])
    if  @todo_item.destroy
    	flash[:success] = "Todo list item was deleted."
    else
    	flash[:error] = "Todo list item could not be deleted."
    end
    redirect_to @to_do_list
end

 private 

 def set_to_do_list
 	@to_do_list = Todolist.find{param[:to_do_list_id]}
 end

def set_todo_item
        @todo_item = @to_do_list.todo_items.find(params[:id])
end

 def todo_item_params
 	params[:todo_items].permit(:content)
 end



end

