class AddColumnsToCstudents < ActiveRecord::Migration
  def change
    add_column :cstudents, :username, :string
    
  end
end
