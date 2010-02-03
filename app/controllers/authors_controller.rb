class AuthorsController < ApplicationController
  
  def books
    @author = Author.find params[:id]
  end
  
  def search
    if params[:q]
      @authors = Author.find :all, :params => {:q => params[:q]}, :from => :search
    end
  end  
end