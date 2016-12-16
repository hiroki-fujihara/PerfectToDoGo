class AddCdToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :cd, :boolean
  end
end
