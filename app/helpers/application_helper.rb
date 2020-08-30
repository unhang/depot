module ApplicationHelper
  def hidden_div_if(condition, attributes = {}, &given_block)
    if condition
      attributes["style"] = "display: none"
    end
    content_tag "div", attributes, &given_block
  end 
end
