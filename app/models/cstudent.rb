class Cstudent < ActiveRecord::Base

max_paginates_per 10
paginates_per 5

  attr_accessor :username_confirmation,:paid
  validates :phone, length: { maximum: 10 }
  validates :email, uniqueness: true
  #validates :username,:presence => {:message => "is COMPULSARY REQUIRED INFORMATION"}
  
 validates :age, :numericality => true,
            :inclusion => {:in => (18..99), :message => "should be 18 to 99 only" },
            :presence => true,
           :format => {:with => /\A\d{2}\Z/, :message => "must be 2 digits"}
            
            
 #validates :username, :confirmation => true
 #validates :username_confirmation, :presence => true

    #validates_absence_of :fname   
    validate  :mail_regex      
         
 def qualifications_name
         
   Qualification.find(self.qualifications_id).qname
  end
         
    def locations_name
         
    Locations.find(self.locations_id).locname
  end     
  def mail_regex
    if email.present? and email.match(/^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.(?:[A-Z]{2}|in|com|org|net|edu|gov|mil|biz|info|mobi|name|aero|asia|jobs|museum)$ /)
      #\A[^@]+@[^@]+\z
      errors.add :email, "This is not a valid email format"
  
    end
  end   
         
         
            
before_save :bsave
  
  def bsave
  puts "-----------------BEFORE SAVE-------------------------------"
  self.fullname = self.fname + " " + self.lname
  end 
  
end

