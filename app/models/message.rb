class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :student

  validates_presence_of :body, :conversation_id, :student_id
end


# class Message < ActiveRecord::Base
#   belongs_to :conversation
#   belongs_to :user

#   validates_presence_of :body, :conversation_id, :user_id
# end