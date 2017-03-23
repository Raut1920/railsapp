class FlowersController < ApplicationController
  before_action :set_flower, only: [:show, :edit, :update, :destroy]

  # GET /flowers
  # GET /flowers.json
  def index
    @flowers = Flower.all
  end

  # GET /flowers/1
  # GET /flowers/1.json
  def show
  end

  # GET /flowers/new
  def new
    @flower = Flower.new
  end

  # GET /flowers/1/edit
  def edit
  end

  # POST /flowers
  # POST /flowers.json
  def create
    @flower = Flower.new(flower_params)

    respond_to do |format|
      if @flower.save
        format.html { redirect_to @flower, notice: 'Flower was successfully created.' }
        format.json { render :show, status: :created, location: @flower }
      else
        format.html { render :new }
        format.json { render json: @flower.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flowers/1
  # PATCH/PUT /flowers/1.json
  def update
    respond_to do |format|
      if @flower.update(flower_params)
        format.html { redirect_to @flower, notice: 'Flower was successfully updated.' }
        format.json { render :show, status: :ok, location: @flower }
      else
        format.html { render :edit }
        format.json { render json: @flower.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flowers/1
  # DELETE /flowers/1.json
  def destroy
    @flower.destroy
    respond_to do |format|
      format.html { redirect_to flowers_url, notice: 'Flower was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flower
      @flower = Flower.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flower_params
      params.require(:flower).permit(:image, :name, :description, :varieties, :climate, :soil, :seedrate, :season, :fertilizer, :diseases)
    end
end
