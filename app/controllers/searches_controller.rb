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
  
  def search
    if params[:search][:married] == "0"
      m = false
    else
      m = true
    end
    if params[:search][:veteran] == "0"
      v = false
    else
      v = true
    end
    if params[:search][:disabled] == "0"
      d = false
    else
      d = true
    end
    
    @search = ProgramRequirement.where("min_age <= ? AND max_age >= ? AND married == ? AND veteran == ? AND disabled == ? AND income_threshold >= ? AND assets_threshold >= ?", params[:search][:age], params[:search][:age], m, v, d, params[:search][:income], params[:search][:assetAmount])
  end
  
  private
  
    def search_params
      params.require(:search).permit(:zipcode, :age, :income, :assetAmount, :married, :veteran, :disabled)
    end
    
end
