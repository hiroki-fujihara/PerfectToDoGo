class CreateGroupTasks < ActiveRecord::Migration
  def change
    create_table :group_tasks do |t|
      t.string :name
      t.string :group_id

      t.timestamps null: false
    end
  end
end
