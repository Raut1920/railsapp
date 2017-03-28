class PloughsController < ApplicationController
  before_action :set_plough, only: [:show, :edit, :update, :destroy]

  # GET /ploughs
  # GET /ploughs.json
  def index
    @ploughs = Plough.all
  end

  # GET /ploughs/1
  # GET /ploughs/1.json
  def show
  end

  # GET /ploughs/new
  def new
    @plough = Plough.new
  end

  # GET /ploughs/1/edit
  def edit
  end

  # POST /ploughs
  # POST /ploughs.json
  def create
    @plough = Plough.new(plough_params)

    respond_to do |format|
      if @plough.save
        format.html { redirect_to @plough, notice: 'Plough was successfully created.' }
        format.json { render :show, status: :created, location: @plough }
      else
        format.html { render :new }
        format.json { render json: @plough.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ploughs/1
  # PATCH/PUT /ploughs/1.json
  def update
    respond_to do |format|
      if @plough.update(plough_params)
        format.html { redirect_to @plough, notice: 'Plough was successfully updated.' }
        format.json { render :show, status: :ok, location: @plough }
      else
        format.html { render :edit }
        format.json { render json: @plough.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ploughs/1
  # DELETE /ploughs/1.json
  def destroy
    @plough.destroy
    respond_to do |format|
      format.html { redirect_to ploughs_url, notice: 'Plough was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plough
      @plough = Plough.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plough_params
      params.require(:plough).permit(:image, :model, :frame, :legsupport, :crossbarshaft, :mounted, :height, :discs, :discthick, :discspace, :depth, :width, :powerhp, :weight)
    end
end
