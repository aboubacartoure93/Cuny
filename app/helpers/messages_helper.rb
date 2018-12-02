module MessagesHelper
# end

# module MessagesHelper
  def self_or_other(message)
    message.student == current_student ? "self" : "other"
  end

  def message_interlocutor(message)
    message.student == message.conversation.sender ? message.conversation.sender : message.conversation.recipient
  end
end