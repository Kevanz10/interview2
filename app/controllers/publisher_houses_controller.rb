class PublisherHousesController < ApplicationController
	before_action :set_house, only: [:show, :edit, :update, :destroy]

  # GET /houses
  def index
    @houses = PublisherHouse.all.order(:name)
  end

  # GET /houses/1
  def show
  end

  # GET /houses/new
  def new
    @house = PublisherHouse.new
  end

  # GET /houses/1/edit
  def edit
  end

  # POST /houses
  def create
    @house = PublisherHouse.new(house_params)

    respond_to do |format|
      if @house.save
        format.html { redirect_to publisher_houses_path, notice: 'House was successfully created.' }
        format.json { render :show, status: :created, location: @house }
      else
        format.html { render :new }
        format.json { render json: @house.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /houses/1
  def update
    respond_to do |format|
      if @house.update(house_params)
        format.html { redirect_to @house, notice: 'House was successfully updated.' }
        format.json { render :show, status: :ok, location: @house }
      else
        format.html { render :edit }
        format.json { render json: @house.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /houses/1
  def destroy
    @house.destroy
    respond_to do |format|
      format.html { redirect_to publisher_houses_path, notice: 'House was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_house
      @house = PublisherHouse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def house_params
      params.require(:publisher_house).permit(:name)
    end
end