module ApplicationHelper
  def authorized?
    current_admin && current_admin.authorized
  end
end
