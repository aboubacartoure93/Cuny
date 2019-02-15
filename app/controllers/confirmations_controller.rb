class ConfirmationsController < Devise::ConfirmationsController
  

  private
  def after_confirmation_path_for(resource_name, resource)
    new_student_session_path
  end
end