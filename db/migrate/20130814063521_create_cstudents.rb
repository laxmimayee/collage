class CreateCstudents < ActiveRecord::Migration
  def change
    create_table :cstudents do |t|
      t.string :fname
      t.string :lname
      t.string :fullname
      t.integer :age
      t.string :location
      t.string :address1
      t.string :address2
      t.string :city
      t.integer :pin
      t.string :phone
      t.string :gender

      t.timestamps
    end
  end
end
