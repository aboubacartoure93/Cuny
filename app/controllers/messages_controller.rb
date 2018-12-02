class MessagesController < ApplicationController
# end

# class MessagesController < ApplicationController
  before_action :authenticate_student!

  def create
    @conversation = Conversation.find(params[:conversation_id])
    @message = @conversation.messages.build(message_params)
    @message.student_id = current_student.id
    @message.save!

    @path = conversation_path(@conversation)
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end
end