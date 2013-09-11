class MasterchefsController < ApplicationController
  before_action :set_masterchef, only: [:show, :edit, :update, :destroy]

  # GET /masterchefs
  # GET /masterchefs.json
  def index
    @masterchefs = Masterchef.all
  end

  # GET /masterchefs/1
  # GET /masterchefs/1.json
  def show
    @users = User.all
    respond_to do |format|
      format.html { render "masterchefs/show" }# show.html.erb
      format.json { render json: @users }
    end
  end

  # GET /masterchefs/new
  def new
    @masterchef = Masterchef.new
  end

  # GET /masterchefs/1/edit
  def edit
  end

  # POST /masterchefs
  # POST /masterchefs.json
  def create
    @masterchef = Masterchef.new(masterchef_params)

    respond_to do |format|
      if @masterchef.save
        format.html { redirect_to @masterchef, notice: 'Takk fyrir.' }
      else
        format.html { render action: 'new' }
        format.json { render json: @masterchef.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /masterchefs/1
  # PATCH/PUT /masterchefs/1.json
  def update
    respond_to do |format|
      if @masterchef.update(masterchef_params)
        format.html { redirect_to @masterchef, notice: 'Masterchef was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @masterchef.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /masterchefs/1
  # DELETE /masterchefs/1.json
  def destroy
    @masterchef.destroy
    respond_to do |format|
      format.html { redirect_to masterchefs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_masterchef
      @masterchef = Masterchef.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def masterchef_params
      params.require(:masterchef).permit(:voter, :votefor)
    end
end
