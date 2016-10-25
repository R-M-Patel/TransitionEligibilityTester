class SearchesController < ApplicationController
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
  
  def create
    @search = Search.new(search_params)
    if @search.save
      # Handle a successful save.
    else
      render 'new'
    end
  end
  
  private
  
    def search_params
      params.require(:search).permit(:zipcode, :age, :income, :married, :veteran, :disabled)
    end
    
end
