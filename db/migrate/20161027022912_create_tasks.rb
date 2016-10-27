class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :content
      t.date :day
      t.integer :important
      t.string :s_date
      t.string :file

      t.timestamps null: false
    end
  end
end
