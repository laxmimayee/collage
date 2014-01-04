class NameToCstudents < ActiveRecord::Migration
  def change
    add_column :cstudents,:name,:string
  end
end
