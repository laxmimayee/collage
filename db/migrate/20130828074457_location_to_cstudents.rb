class LocationToCstudents < ActiveRecord::Migration
  def change
    add_column :cstudents,:locations_id,:integer
  end
end
