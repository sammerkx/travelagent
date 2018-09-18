class CabinsController < ApplicationController
  before_action :set_cabin, only: [:show, :edit, :update, :destroy]

  # GET /cabins
  # GET /cabins.json
  def index
    @cabins = Cabin.all
  end

  # GET /cabins/1
  # GET /cabins/1.json
  def show
  end
rescue_from ActiveRecord::RecordNotFound, with: :redirect_if_not_found
  # GET /cabins/new
  def new
    @cabin = Cabin.new
     @ships = Ship.all
  end

  # GET /cabins/1/edit
  def edit
  @ships = Ship.all  
  end

  # POST /cabins
  # POST /cabins.json
  def create
    @cabin = Cabin.new(cabin_params)

    respond_to do |format|
      if @cabin.save
        format.html { redirect_to @cabin, notice: 'Cabin was successfully created.' }
        format.json { render :show, status: :created, location: @cabin }
      else
        format.html { render :new }
        format.json { render json: @cabin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cabins/1
  # PATCH/PUT /cabins/1.json
  def update
    respond_to do |format|
      if @cabin.update(cabin_params)
        format.html { redirect_to @cabin, notice: 'Cabin was successfully updated.' }
        format.json { render :show, status: :ok, location: @cabin }
      else
        format.html { render :edit }
        format.json { render json: @cabin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cabins/1
  # DELETE /cabins/1.json
  def destroy
    @cabin.destroy
    respond_to do |format|
      format.html { redirect_to cabins_url, notice: 'Cabin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cabin
      @cabin = Cabin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cabin_params
      params.require(:cabin).permit(:name, :beds, :deck, :ship_id)
    end
end
