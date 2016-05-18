class CreateTodoItems < ActiveRecord::Migration
  def change
    create_table :todo_items do |t|
      t.string :content
      t.references :to_do_lists, index: true

      t.timestamps
    end
  end
end
