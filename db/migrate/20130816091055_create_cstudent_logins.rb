class CreateCstudentLogins < ActiveRecord::Migration
  def change
    create_table :cstudent_logins do |t|

      t.timestamps
    end
  end
end
