class CreateMarks < ActiveRecord::Migration
  def change
    create_table :marks do |t|
      t.integer :marks
      t.integer :subjects_id
      t.integer :cstudents_id
      t.integer :examtypes_id

      t.timestamps
    end
  end
end
