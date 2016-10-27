class CreateChatlogs < ActiveRecord::Migration
  def change
    create_table :chatlogs do |t|
      t.string :user_id
      t.string :content
      t.string :group_id

      t.timestamps null: false
    end
  end
end
