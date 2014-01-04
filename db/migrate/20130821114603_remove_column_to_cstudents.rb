class RemoveColumnToCstudents < ActiveRecord::Migration
  def change
    remove_column :cstudents,:address1,:string
    remove_column :cstudents,:address2,:string
    remove_column :cstudents,:pin,:string
   end
end
