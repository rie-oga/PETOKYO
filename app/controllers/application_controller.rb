class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

	protected
	  def after_sign_in_path_for(resource)
	    if resource == current_admin
	    　　member_spots_path
	    elsif
	       resource == current_member
	       member_spots_path
	    end
	  end

	  def after_sign_out_path_for(resource)
	    if resource == :admin
	      admin_session_path
	    elsif resource == :member
	      root_path
	    end
	  end

	  def configure_permitted_parameters
	    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :nick_name])
	  end
end
