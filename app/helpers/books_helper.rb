module BooksHelper
  
  def book_params
    params.require(:book).permit(:title, :avatar)
  end


  # def conversation_interlocutor(conversation)
  #   conversation.recipient == current_student ? conversation.sender : conversation.recipient
  # end

end

# module PostsHelper
#   def post_params
#     params.require(:post).permit(:title, :body, :tag_list, :image)
#   end
# end