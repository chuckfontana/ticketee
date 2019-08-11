module ApplicationHelper
  def title(*parts)
    unless parts.empty?
      content_for :title do
        (parts << "Ticketee").join(" - ") #Shovel operator modifies original string.  + cretes new string
      end
    end
  end

  def admins_only(&block)
    block.call if current_user.try(:admin?)
  end

end
