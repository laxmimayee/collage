class CstudentLogin < ActiveRecord::Base
  
  has_no_table

  column :username, :string
  
  
  validates :username,:presence => {:message => "is mandatory"}
  
  
end
