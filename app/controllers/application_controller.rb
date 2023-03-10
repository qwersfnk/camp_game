class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource_or_scope)
    if resource.is_a?(Admin)
      admin_camp_facilities_path
      return
    else
      user_path(resource)
    end
  end
end