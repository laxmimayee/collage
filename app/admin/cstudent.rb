ActiveAdmin.register Cstudent do

  controller do
      def permitted_params
        params.permit!
     end
   end

form do |f|
      f.inputs "Details" do
        f.input :fname
        f.input :lname
        f.input :email
        f.input :phone
        f.input :gender, :as => :radio, :collection =>["male","female"]
        f.input :doj, :label => "Date-Of-Birth",:as => :datepicker
        f.input :age
        f.input :locations_id, :as => :select,:label => 'location', :collection => Locations.all.map(&:id)
        f.input :qualifications_id, :as => :select,:label => 'qualification', :collection => Qualification.all.map(&:id)
        

      end
      #8973402712=>vimali
      f.actions
    end
  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  index do 
      column :id
      column :fname
      column :lname
      column :phone
      column :location
      column :email do|f|
        strong{f.email}
      end
      column :gender
    
      default_actions
     # actions do|t|
        #link_to "trail"
     # end

    end


    
  
end
