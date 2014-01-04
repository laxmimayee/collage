class CreateQualifications < ActiveRecord::Migration
  def change
    create_table :qualifications do |t|
      t.string :qname

      t.timestamps
    end
  end
end
