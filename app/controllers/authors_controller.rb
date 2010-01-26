class AuthorsController < ApplicationController
  
  def books
    @author = Author.find params[:id]
    @books = Book.find :all, :params => {:author_id => @author.id}
  end
  
end