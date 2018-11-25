class RegistrationsController < Devise::RegistrationsController

  def new
    super
  end

  def create
    # add custom create logic here
  end

  # def update
  #   super
  # end



 # def edit
 # 	super
 #  	# if current_student.update_attributes(account_update_params)
 #   #  	flash[:notice] = "Student information updated"
 #   #  	redirect_to edit_student_registration_path
 #  	# else
 #   #  	flash[:error] = "Invalid student information"
 #   #  	redirect_to edit_student_registration_path
 # 	#end
 # end



 # def edit
 #  super
 #    if @student.update(update_params)
 #      redirect_to @student, notice: 'Profile Updated'
 #    else
 #      render :edit
 #    end
 #  end    







	private

	def sign_up_params
		params.require(:student).permit(:name, :email, :password, :password_confirmation)
	end

	def update_params
		#params.require(:student).permit(:name, :email, :password, :password_confirmation, :current_password, :fname, :lname, :profilepic)
    params.require(:student).permit(:email, :password, :password_confirmation, :current_password, :fname, :lname, :profilepic, :name)
	end
	 #params.require(:place).permit(:name, :address, :zipcode, :website, :description, :avatar)
end