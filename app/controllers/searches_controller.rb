class SearchesController < ApplicationController
  def home
    # @search = Search.new
  end

  def result
  end
  
  def support
  end
  
  def show
    @search = Search.find(params[:id])
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
		@search = Search.new(search_params)
		if @search.save
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
			
			#determine poverty level based on size
			income = params[:search][:income]
			poverty = helpers.poverty_level(params[:search][:household])
			
			@search = ProgramRequirement.where("min_age <= ? AND max_age >= ? AND assets_threshold >= ? AND disabled == ? AND veteran == ?", params[:search][:age], params[:search][:age], params[:search][:assetAmount], params[:disabled], params[:veteran])
			
			
			# calculate true max/min income levels for each program and compare it to the annual income of the patient
			@programs = []
			
			@search.each do |prg|
				max = (prg.max_income/100.0) * poverty
				if !prg.min_income.nil?
					min = (prg.min_income/100.0) * poverty
				else
					min = 0
				end
				
				if max < income.to_f || min > income.to_f
					# @search.delete(prg)
					@programs.push(Program.find(prg.program_id))
				end
			end
			
			# @search.each do |req|
				# @programs.push(Program.find(req.program_id))
			# end
		else
			render 'new'
		end
  end
  
  private
  
    def search_params
      params.require(:search).permit(:zipcode, :age, :income, :assetAmount, :married, :household, :veteran, :disabled)
    end
    
end
