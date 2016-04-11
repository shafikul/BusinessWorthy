class GlobalGoalsController < ApplicationController
  before_action :set_global_goal, only: [:show, :edit, :update, :destroy]

  # GET /global_goals
  # GET /global_goals.json
  def index
    @global_goals = GlobalGoal.all
  end

  # GET /global_goals/1
  # GET /global_goals/1.json
  def show
  end

  # GET /global_goals/new
  def new
    @global_goal = GlobalGoal.new
  end

  # GET /global_goals/1/edit
  def edit
  end

  # POST /global_goals
  # POST /global_goals.json
  def create
    @global_goal = GlobalGoal.new(global_goal_params)

    respond_to do |format|
      if @global_goal.save
        format.html { redirect_to @global_goal, notice: 'Global goal was successfully created.' }
        format.json { render :show, status: :created, location: @global_goal }
      else
        format.html { render :new }
        format.json { render json: @global_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /global_goals/1
  # PATCH/PUT /global_goals/1.json
  def update
    respond_to do |format|
      if @global_goal.update(global_goal_params)
        format.html { redirect_to @global_goal, notice: 'Global goal was successfully updated.' }
        format.json { render :show, status: :ok, location: @global_goal }
      else
        format.html { render :edit }
        format.json { render json: @global_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /global_goals/1
  # DELETE /global_goals/1.json
  def destroy
    @global_goal.destroy
    respond_to do |format|
      format.html { redirect_to global_goals_url, notice: 'Global goal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_global_goal
      @global_goal = GlobalGoal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def global_goal_params
      params.require(:global_goal).permit(:name, :org_name, :org_title, :what_is_doing, :why_doing, :impact, :image_link, :impact_criteria)
    end
end
