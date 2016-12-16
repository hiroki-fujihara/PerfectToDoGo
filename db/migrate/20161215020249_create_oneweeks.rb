class CreateOneweeks < ActiveRecord::Migration
  def change
    create_table :oneweeks do |t|
      t.date :renge
      t.string :name
      t.integer :important
      t.string :file

      t.timestamps null: false
    end
  end
end
