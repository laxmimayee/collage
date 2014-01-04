module ApplicationHelper
    def display_error_messages(obj)
    str = ''
    if obj.errors.any?
      str += '<div id="errors">'
      str += '  <span class="count">'
      str +=  obj.errors.count.to_s
      str +=  ' errors prevented student from saving</span>'
      str +=  '<ul>'
          obj.errors.full_messages.each do |message|
      str +=     "<li>#{message} </li>"
          end  
        str += '</ul>'
      str += '</div>'  
    end
    str.html_safe
  end
  
  def display_flash_messages
    str = ''
    flash.each do |type, message|
      str +=  "<p class=\'#{type.to_s}\'>"+ message + '</p>'
    end
    str.html_safe
end
  
  
end


