class CreateExamtypes < ActiveRecord::Migration
  def change
    create_table :examtypes do |t|
      t.string :exname

      t.timestamps
    end
  end
end
