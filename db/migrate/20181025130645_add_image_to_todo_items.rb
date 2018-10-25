class AddImageToTodoItems < ActiveRecord::Migration[5.2]
  def change
    add_column :todo_items, :image, :string
  end
end
