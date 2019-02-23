module TutorsHelper

	def tutor_params
    params.require(:tutor).permit(:name, :photo_tutor)
  end
end
