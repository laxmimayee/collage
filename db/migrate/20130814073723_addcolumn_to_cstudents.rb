class AddcolumnToCstudents < ActiveRecord::Migration
  def change
  
  add_column :cstudents, :doj,:datetime
  
  end
end
