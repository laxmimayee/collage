class CstudentsController < ApplicationController

  before_action :setup


  def studentlogin
    @student=Cstudent.new
    
  end

def login
    @student=Cstudent.new
  #@student.save
  #redirect_to :action => :mainpage
  end


  def newstudent
    @student=Cstudent.new
    @pass = params[:password]
    @email = params[:email]
    @Phonenumber = params[:Phonenumber]
    
    #@student.save
  end

  def addstudent
    
    n=params[:cstudent][:hobbies].join(",")
    
    @student=Cstudent.new(student_params)
    @student.hobbies=n
    if @student.save
      flash[:notice] = "Student #{@student.username} is sucessfully created"
      redirect_to :action => :liststudent
      #redirect_to :action => :studentlogin
    else
      
      flash[:error] = "Student #{@student.username} is not created"   
      
      #render 'newstudent'
    end  
    #redirect_to :action => :liststudent
  end

  

  def liststudent
    @student=Cstudent.order(:id)  .page params[:page]
  end

  def fullname
    self.fname + " " + self.lname
  end

  def forgotpwd
    @student=Cstudent.new
  end

def view_details
  @student = Cstudent.find params[:id]
end

def setup
  @products = %w(gopi krishna lagi setti pampas)
end

def edit_details
  @student = Cstudent.find params[:id]
  @student.delete
end


  private

  def student_params

    params.require(:cstudent).permit(:fname,:qualifications_id,:locations_id,:name,:hobbies,:lname, :fullname,:age, :location,  :city, :phone, :gender, :email, :password, :username,:username_confirmation,:doj)

  end
  
end
