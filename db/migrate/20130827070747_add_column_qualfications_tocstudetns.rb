class AddColumnQualficationsTocstudetns < ActiveRecord::Migration
  def change
    add_column :cstudents,:qualifications_id,:integer
  end
end
