class AddTasksCountToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :tasks_count, :integer, default: 0, null: false
  end
end
