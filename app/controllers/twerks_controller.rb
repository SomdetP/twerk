class TwerksController < ApplicationController
  before_action :set_twerk, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /twerks
  # GET /twerks.json
  def index
    @twerks = Twerk.all.order("created_at DESC")
    @twerk = Twerk.new
  end

  # GET /twerks/1
  # GET /twerks/1.json
  def show
  end

  # GET /twerks/new
  def new
    @twerk = current_user.twerks.build
  end

  # GET /twerks/1/edit
  def edit
  end

  # POST /twerks
  # POST /twerks.json
  def create
    @twerk = current_user.twerks.build(twerk_params)

    respond_to do |format|
      if @twerk.save
        format.html { redirect_to root_path, notice: 'Yeah! Baby, That is how you Twerk.' }
        format.json { render :show, status: :created, location: @twerk }
      else
        format.html { render :new }
        format.json { render json: @twerk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twerks/1
  # PATCH/PUT /twerks/1.json
  def update
    respond_to do |format|
      if @twerk.update(twerk_params)
        format.html { redirect_to @twerk, notice: 'More Twerk More FUN!.' }
        format.json { render :show, status: :ok, location: @twerk }
      else
        format.html { render :edit }
        format.json { render json: @twerk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twerks/1
  # DELETE /twerks/1.json
  def destroy
    @twerk.destroy
    respond_to do |format|
      format.html { redirect_to twerks_url, notice: 'I will miss that Twerk.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twerk
      @twerk = Twerk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def twerk_params
      params.require(:twerk).permit(:twerk)
    end
end
