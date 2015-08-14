class FastFoodsController < ApplicationController
  before_action :set_fast_food, only: [:show, :edit, :update, :destroy]

  # GET /fast_foods
  # GET /fast_foods.json
  def index
    @fast_foods = FastFood.all
  end

  # GET /fast_foods/1
  # GET /fast_foods/1.json
  def show
  end

  # GET /fast_foods/new
  def new
    @fast_food = FastFood.new
  end

  # GET /fast_foods/1/edit
  def edit
  end

  # POST /fast_foods
  # POST /fast_foods.json
  def create
    @fast_food = FastFood.new(fast_food_params)

    respond_to do |format|
      if @fast_food.save
        format.html { redirect_to @fast_food, notice: 'Fast food was successfully created.' }
        format.json { render :show, status: :created, location: @fast_food }
      else
        format.html { render :new }
        format.json { render json: @fast_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fast_foods/1
  # PATCH/PUT /fast_foods/1.json
  def update
    respond_to do |format|
      if @fast_food.update(fast_food_params)
        format.html { redirect_to @fast_food, notice: 'Fast food was successfully updated.' }
        format.json { render :show, status: :ok, location: @fast_food }
      else
        format.html { render :edit }
        format.json { render json: @fast_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fast_foods/1
  # DELETE /fast_foods/1.json
  def destroy
    @fast_food.destroy
    respond_to do |format|
      format.html { redirect_to fast_foods_url, notice: 'Fast food was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fast_food
      @fast_food = FastFood.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fast_food_params
      params[:fast_food]
    end
end
