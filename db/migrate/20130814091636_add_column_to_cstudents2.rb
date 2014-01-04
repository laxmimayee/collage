class AddColumnToCstudents2 < ActiveRecord::Migration
  def change
    add_column :cstudents, :password, :string
    add_column :cstudents, :username, :string
    
  end
end
