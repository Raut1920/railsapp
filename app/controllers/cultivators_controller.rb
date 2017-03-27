class CultivatorsController < ApplicationController
  before_action :set_cultivator, only: [:show, :edit, :update, :destroy]

  # GET /cultivators
  # GET /cultivators.json
  def index
    @cultivators = Cultivator.all
  end

  # GET /cultivators/1
  # GET /cultivators/1.json
  def show
  end

  # GET /cultivators/new
  def new
    @cultivator = Cultivator.new
  end

  # GET /cultivators/1/edit
  def edit
  end

  # POST /cultivators
  # POST /cultivators.json
  def create
    @cultivator = Cultivator.new(cultivator_params)

    respond_to do |format|
      if @cultivator.save
        format.html { redirect_to @cultivator, notice: 'Cultivator was successfully created.' }
        format.json { render :show, status: :created, location: @cultivator }
      else
        format.html { render :new }
        format.json { render json: @cultivator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cultivators/1
  # PATCH/PUT /cultivators/1.json
  def update
    respond_to do |format|
      if @cultivator.update(cultivator_params)
        format.html { redirect_to @cultivator, notice: 'Cultivator was successfully updated.' }
        format.json { render :show, status: :ok, location: @cultivator }
      else
        format.html { render :edit }
        format.json { render json: @cultivator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cultivators/1
  # DELETE /cultivators/1.json
  def destroy
    @cultivator.destroy
    respond_to do |format|
      format.html { redirect_to cultivators_url, notice: 'Cultivator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cultivator
      @cultivator = Cultivator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cultivator_params
      params.require(:cultivator).permit(:image, :type, :frame, :spring, :tyne, :pairs, :anchorpin, :nuts, :linkagepoint, :length, :width, :height, :tillerpin, :weight, :tractorpower)
    end
end
