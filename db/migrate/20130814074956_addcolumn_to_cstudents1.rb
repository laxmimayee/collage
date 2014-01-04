class AddcolumnToCstudents1 < ActiveRecord::Migration
  def change
    add_column :cstudents, :email, :string
  end
end
