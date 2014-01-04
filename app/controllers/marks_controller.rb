class MarksController < ApplicationController

  def enter_marks_form
    @marks = Mark.new
  end

  def insert_marks
   
    #@marks = Mark.new(marks_params)
    #@marks.save
  #render :text => params.inspect and return
  #local=params["Mark"]
  #render :text => local.inspect and return
  

 1.upto(4) do |x|
 @marks=Mark.new
  @marks.cstudents_id=marks_params["cstudents_id"]
  @marks.examtypes_id=marks_params["examtypes_id"]
  @marks.subjects_id=x
  @marks.marks=marks_params["Telugu"] if x==1
  @marks.marks=marks_params["English"] if x==2
  @marks.marks=marks_params["Maths"] if x==3
  @marks.marks=marks_params["Science"] if x==4
  @marks.save
  
    
end
end
  private
  
  def marks_params
    params.require(:mark).permit(:Telugu,:English,:Maths,:Science,:cstudents_id,:subjects_id,:examtypes_id)
    end


end