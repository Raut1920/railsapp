class AgriculturesController < ApplicationController
  before_action :set_agriculture, only: [:show, :edit, :update, :destroy]

  # GET /agricultures
  # GET /agricultures.json
  def index
    @agricultures = Agriculture.all
  end

  # GET /agricultures/1
  # GET /agricultures/1.json
  def show
  end

  # GET /agricultures/new
  def new
    @agriculture = Agriculture.new
  end

  # GET /agricultures/1/edit
  def edit
  end

  # POST /agricultures
  # POST /agricultures.json
  def create
    @agriculture = Agriculture.new(agriculture_params)

    respond_to do |format|
      if @agriculture.save
        format.html { redirect_to @agriculture, notice: 'Agriculture was successfully created.' }
        format.json { render :show, status: :created, location: @agriculture }
      else
        format.html { render :new }
        format.json { render json: @agriculture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agricultures/1
  # PATCH/PUT /agricultures/1.json
  def update
    respond_to do |format|
      if @agriculture.update(agriculture_params)
        format.html { redirect_to @agriculture, notice: 'Agriculture was successfully updated.' }
        format.json { render :show, status: :ok, location: @agriculture }
      else
        format.html { render :edit }
        format.json { render json: @agriculture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agricultures/1
  # DELETE /agricultures/1.json
  def destroy
    @agriculture.destroy
    respond_to do |format|
      format.html { redirect_to agricultures_url, notice: 'Agriculture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agriculture
      @agriculture = Agriculture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agriculture_params
      params.require(:agriculture).permit(:name, :description, :varieties, :climate, :soil, :seedrate, :season, :fertilizer, :diseases)
    end
end
