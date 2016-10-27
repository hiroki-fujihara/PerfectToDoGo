class CreateOftenTasks < ActiveRecord::Migration
  def change
    create_table :often_tasks do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
