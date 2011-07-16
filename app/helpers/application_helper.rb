module ApplicationHelper
  def logo
      image_tag("lvs.png", :alt => "CHSdesk", :class => "round")
      base_logo = image_tag("lvs.png")
      if @logo.nil?
        base_logo
      else
        " #{base_logo} | #{@logo}"
      # Fill in.
       end
    end

  
end
