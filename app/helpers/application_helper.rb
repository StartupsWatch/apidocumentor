module ApplicationHelper
  def boolean_colorize(optional=true)
    if optional 
      color = "green"
      text = "optional"
    else
      color = "red"
      text = "required"
    end 
    "<span style='color:#{color}'>#{text}</span>".html_safe
  end
end
