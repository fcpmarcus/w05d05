class TgifsController < ApplicationController
  before_action :set_tgif, only: [:show, :edit, :update, :destroy]

  # GET /tgifs
  # GET /tgifs.json
  def index
    @tgifs = Tgif.all
  end

  # GET /tgifs/1
  # GET /tgifs/1.json
  def show
  end

  # GET /tgifs/new
  def new
    @tgif = Tgif.new
  end

  # GET /tgifs/1/edit
  def edit
  end

  # POST /tgifs
  # POST /tgifs.json
  def create
    @tgif = Tgif.new(tgif_params)

    respond_to do |format|
      if @tgif.save
        format.html { redirect_to @tgif, notice: 'Tgif was successfully created.' }
        format.json { render :show, status: :created, location: @tgif }
      else
        format.html { render :new }
        format.json { render json: @tgif.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tgifs/1
  # PATCH/PUT /tgifs/1.json
  def update
    respond_to do |format|
      if @tgif.update(tgif_params)
        format.html { redirect_to @tgif, notice: 'Tgif was successfully updated.' }
        format.json { render :show, status: :ok, location: @tgif }
      else
        format.html { render :edit }
        format.json { render json: @tgif.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tgifs/1
  # DELETE /tgifs/1.json
  def destroy
    @tgif.destroy
    respond_to do |format|
      format.html { redirect_to tgifs_url, notice: 'Tgif was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tgif
      @tgif = Tgif.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tgif_params
      params.require(:tgif).permit(:name, :email)
    end
end
