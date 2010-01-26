class BooksController < ApplicationController
  def index 
    @books = Book.find :all
  end
end
