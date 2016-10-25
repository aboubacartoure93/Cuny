module BooksHelper
  
  def book_params
    params.require(:book).permit(:title, :avatar)
  end

end

# module PostsHelper
#   def post_params
#     params.require(:post).permit(:title, :body, :tag_list, :image)
#   end
# end