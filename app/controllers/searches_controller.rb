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
		@search.household = 1
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
		
			if params[:disabled].nil?
				d = 'false'
			else
				d = params[:disabled]
			end
			
			if params[:veteran].nil?
				v = 'false'
			else
				v = params[:veteran]
			end
			
			#determine poverty level based on size
			income = params[:search][:income]
			poverty = helpers.poverty_level(params[:search][:household])
			
			@search = ProgramRequirement.where("zip_code_range_start <= ? AND zip_code_range_end >= ? AND min_age <= ? AND max_age >= ? AND assets_threshold >= ? AND disabled = ? AND veteran = ?", params[:search][:zipcode], params[:search][:zipcode], params[:search][:age], params[:search][:age], params[:search][:assetAmount], d, v)
			
			
			# calculate true max/min income levels for each program and compare it to the annual income of the patient
			@programs = []
			
			@search.each do |prg|
				max = (prg.max_income/100.0) * poverty
				if !prg.min_income.nil?
					min = (prg.min_income/100.0) * poverty
				else
					min = 0
				end
				
				if max >= income.to_f && min <= income.to_f
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
