class StudentMailer < ActionMailer::Base
	# default :from => 'supports@cunyversity.com'
	default :from => 'aboubacartoure93@gmail.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_signup_email(student)
    @student = student
    mail( :to => @student.email,
    :subject => 'Thanks for signing up for our amazing app' )
  end
end




  












