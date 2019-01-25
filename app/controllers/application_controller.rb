class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :store_location
  before_action :configure_permitted_parameters, if: :devise_controller?

  #before_action :configure_permitted_parameters, if: :devise_controller?





  # def index
  #   @books = Book.all
  #  end

  

  protected


  def account_update_params
    devise_parameter_sanitizer.sanitize(:account_update)
  end
 
  def store_location
		puts "Storing: #{params[:continue]}"
	    if params[:continue] # =~ /\/(events\/[0-9])\z/ # safelist
	        puts "it's a match"
	        session[:continue] = params[:continue]
	    end
	end

	def after_sign_in_path_for(resource)
	    puts "I found: #{session[:continue]}"
	    session.delete(:continue) || root_path
	end

  def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password) }
        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:fname, :lname, :name, :email, :password, :current_password, :password_confirmation, :profilepic, :pseudo) }
  end

end
