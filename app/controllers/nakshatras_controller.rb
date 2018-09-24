class NakshatrasController < ApplicationController
  before_action :set_nakshatra, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :is_admin?
  # GET /nakshatras
  # GET /nakshatras.json
  def index
    @nakshatras = Nakshatra.all
  end

  # GET /nakshatras/1
  # GET /nakshatras/1.json
  def show
  end

  # GET /nakshatras/new
  def new
    @nakshatra = Nakshatra.new
  end

  # GET /nakshatras/1/edit
  def edit
  end

  # POST /nakshatras
  # POST /nakshatras.json
  def create
    @nakshatra = Nakshatra.new(nakshatra_params)

    respond_to do |format|
      if @nakshatra.save
        format.html { redirect_to @nakshatra, notice: 'Nakshatra was successfully created.' }
        format.json { render :show, status: :created, location: @nakshatra }
      else
        format.html { render :new }
        format.json { render json: @nakshatra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nakshatras/1
  # PATCH/PUT /nakshatras/1.json
  def update
    respond_to do |format|
      if @nakshatra.update(nakshatra_params)
        format.html { redirect_to @nakshatra, notice: 'Nakshatra was successfully updated.' }
        format.json { render :show, status: :ok, location: @nakshatra }
      else
        format.html { render :edit }
        format.json { render json: @nakshatra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nakshatras/1
  # DELETE /nakshatras/1.json
  def destroy
    @nakshatra.destroy
    respond_to do |format|
      format.html { redirect_to nakshatras_url, notice: 'Nakshatra was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nakshatra
      @nakshatra = Nakshatra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nakshatra_params
      params.require(:nakshatra).permit(:name)
    end
end
