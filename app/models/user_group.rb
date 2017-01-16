class UserGroup < ActiveRecord::Base
  def change
    create_table :files do |t|
      t.string :upload_file_name
      t.binary :upload_file
      
      t.timestamps
    end
  end
end
