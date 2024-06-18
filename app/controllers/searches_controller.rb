class SearchesController < ApplicationController
  def search
    @range = params[:range]
    @word = params[:word]
  end
  
  if @range == 'User'
    @users = User.looks(params[:search], params[:word])
  else
    @books = Book.looks(params[:search], params[:word])
    
end
