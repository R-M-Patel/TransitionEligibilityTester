class UserPagesController < ApplicationController
  def home
    # @search = Search.new
  end

  def result
  end
  
  def support
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @search = Search.new
  end
  
end
