class ProgramRequirementsController < ApplicationController
  before_action :set_program_requirement, only: [:show, :edit, :update, :destroy]

  # GET /program_requirements
  # GET /program_requirements.json
  def index
    @program_requirements = ProgramRequirement.all
  end

  # GET /program_requirements/1
  # GET /program_requirements/1.json
  def show
  end

  # GET /program_requirements/new
  def new
    @program_requirement = ProgramRequirement.new
		@program = Program.find(params[:id])
  end

  # GET /program_requirements/1/edit
  def edit
  end

  # POST /program_requirements
  # POST /program_requirements.json
  def create
    @program_requirement = ProgramRequirement.new(program_requirement_params)
		@program = Program.find(params[:id])
		@program_requirement.program = @program

    respond_to do |format|
      if @program_requirement.save
        format.html { redirect_to @program_requirement, notice: 'Program requirement was successfully created.' }
        format.json { render :show, status: :created, location: @program_requirement }
      else
        format.html { render :new }
        format.json { render json: @program_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /program_requirements/1
  # PATCH/PUT /program_requirements/1.json
  def update
		
    respond_to do |format|
      if @program_requirement.update(program_requirement_params)
        format.html { redirect_to @program_requirement, notice: 'Program requirement was successfully updated.' }
        format.json { render :show, status: :ok, location: @program_requirement }
      else
        format.html { render :edit }
        format.json { render json: @program_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /program_requirements/1
  # DELETE /program_requirements/1.json
  def destroy
    @program_requirement.destroy
    respond_to do |format|
      format.html { redirect_to program_requirements_url, notice: 'Program requirement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_program_requirement
      @program_requirement = ProgramRequirement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def program_requirement_params
      params.require(:program_requirement).permit(:min_age, :max_age, :max_income, :min_income, :assets_threshold, :veteran, :disabled, :zip_code_range_start, :zip_code_range_end)
    end
end
