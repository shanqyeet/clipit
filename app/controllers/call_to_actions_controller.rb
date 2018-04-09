class CallToActionsController < ApplicationController
  before_action :set_call_to_action, only: [:show, :edit, :update, :destroy]

  # GET /call_to_actions
  # GET /call_to_actions.json
  def index
    @call_to_actions = CallToAction.all
  end

  # GET /call_to_actions/1
  # GET /call_to_actions/1.json
  def show
  end

  # GET /call_to_actions/new
  def new
    @call_to_action = CallToAction.new
  end

  # GET /call_to_actions/1/edit
  def edit
  end

  # POST /call_to_actions
  # POST /call_to_actions.json
  def create
    @call_to_action = CallToAction.new(call_to_action_params)

    respond_to do |format|
      if @call_to_action.save
        format.html { redirect_to @call_to_action, notice: 'Call to action was successfully created.' }
        format.json { render :show, status: :created, location: @call_to_action }
      else
        format.html { render :new }
        format.json { render json: @call_to_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /call_to_actions/1
  # PATCH/PUT /call_to_actions/1.json
  def update
    respond_to do |format|
      if @call_to_action.update(call_to_action_params)
        format.html { redirect_to @call_to_action, notice: 'Call to action was successfully updated.' }
        format.json { render :show, status: :ok, location: @call_to_action }
      else
        format.html { render :edit }
        format.json { render json: @call_to_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /call_to_actions/1
  # DELETE /call_to_actions/1.json
  def destroy
    @call_to_action.destroy
    respond_to do |format|
      format.html { redirect_to call_to_actions_url, notice: 'Call to action was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_call_to_action
      @call_to_action = CallToAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def call_to_action_params
      params.require(:call_to_action).permit(:description, :button_text, :button_link, :position, :bg_color, :bg_border_size, :bg_border_type, :bg_border_color, :bg_border_radius, :btn_color, :btn_border_size, :btn_border_type, :btn_border_color, :btn_border_radius, :user_id, :brand_id)
    end
end
