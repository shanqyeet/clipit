class ClipsController < ApplicationController
  before_action :set_clip, only: [:show, :edit, :update, :destroy]

  # GET /clips
  # GET /clips.json
  def index
    @clips = Clip.all
  end

  def short
    @clip = Clip.find_by(short_link: params[:short_link])
    @clip.update(count: @clip.count + 1)
  end 

  def archive 
    @clip = Clip.find(params[:id])
    @clip.archived!
    redirect_to request.referrer
  end 

  # GET /clips/1
  # GET /clips/1.json
  def show

  end


  # GET /clips/new
  def new
    @clip = Clip.new
  end

  # GET /clips/1/edit
  def edit
  end

  # GET /translate
  def translate 

    @brand_logo = Brand.find(params[:brand_id])
    @brand_name = Brand.find(params[:brand_id]).name
    if @brand_logo.logo.file.nil? 
      @brand = {url:"http://localhost:3000/assets/clipit-logo-19f64c3a05955cb803c20e688b74f2419f1ed60fdfc5d3d928efd26cb65188e3.png", name: @brand_name}
    else 
      @brand = {url: @brand_logo.logo.url, name: @brand_name }
    end 
    render json: @brand

  end 

  # POST /clips
  # POST /clips.json
  def create
    @clip = Clip.new(clip_params)
    respond_to do |format|
      if @clip.save
        format.html { redirect_to current_user, notice: 'Clip was successfully created.' }
        format.json { render :show, status: :created, location: @clip }
      else
        @clip.errors
        format.html { redirect_to current_user}
        format.json { render json: @clip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clips/1
  # PATCH/PUT /clips/1.json
  def update
    respond_to do |format|
      if @clip.update(clip_params)
        format.html { redirect_to current_user, notice: 'Clip was successfully updated.' }
        format.json { render :show, status: :ok, location: @clip }
      else
        format.html { render :edit }
        format.json { render json: @clip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clips/1
  # DELETE /clips/1.json
  def destroy
    @clip.destroy
    respond_to do |format|
      format.html { redirect_to clips_url, notice: 'Clip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clip
      @clip = Clip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clip_params
      params.permit(:page_link, :call_to_action_id, :user_id)
    end
end
