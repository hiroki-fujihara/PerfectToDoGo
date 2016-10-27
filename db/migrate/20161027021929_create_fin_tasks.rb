class CreateFinTasks < ActiveRecord::Migration
  def change
    create_table :fin_tasks do |t|
      t.date :fin_day
      t.string :task_id

      t.timestamps null: false
    end
  end
end
