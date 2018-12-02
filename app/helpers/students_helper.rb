module StudentsHelper



  def conversation_interlocutor(conversation)
    conversation.recipient == current_student ? conversation.sender : conversation.recipient
  end




end
