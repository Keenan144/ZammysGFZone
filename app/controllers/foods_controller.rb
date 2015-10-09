class FoodsController < ApplicationController
  before_action :set_food, only: [:show, :edit, :update, :destroy]
  before_action :save_my_previous_url

  # GET /foods
  # GET /foods.json
  def index
    @foods = Food.all
  end

  # GET /foods/1
  # GET /foods/1.json
  def show
  end

  # GET /foods/new
  def new
    @food = Food.new
  end

  def breakfast_food_items
    foods = Food.where(food_category_id: [1,6])
    @foods = foods.paginate(page: params[:page], per_page: 6)
  end

  def lunch_snacks
  end


  def lunch_food_items
    foods = Food.where(food_category_id: [2,6,7])
    @foods = foods.paginate(page: params[:page], per_page: 6)
  end

  def lunch_snacks
  end


  def dinner_food_items
    foods = Food.where(food_category_id: [3,7])
    @foods = foods.paginate(page: params[:page], per_page: 6)
  end

  def dinner_snacks
    foods = Food.where(food_category_id: 5)
    @foods = foods.paginate(page: params[:page], per_page: 6)
  end

  def dessert_food_items
    foods = Food.where(food_category_id: 5)
    @foods = foods.paginate(page: params[:page], per_page: 6)
  end











  # GET /foods/1/edit
  def edit
  end

  # POST /foods
  # POST /foods.json
  def create
    @food = Food.new(food_params)

    if @food.placement == "breakfast"
          @food.update(food_category_id: 1)
        elsif @food.placement == "breakfast/lunch"
          @food.update(food_category_id: 6)
        elsif @food.placement == "lunch"
          @food.update(food_category_id: 2)
        elsif @food.placement == "lunch/dinner"
          @food.update(food_category_id: 7)
        elsif @food.placement == "dinner"
          @food.update(food_category_id: 3)
        elsif @food.placement == "snacks"
          @food.update(food_category_id: 4)
        elsif @food.placement == "dessert"
          @food.update(food_category_id: 5)
        end

    respond_to do |format|
      if @food.save
        format.html { redirect_to @food, notice: 'Food was successfully created.' }
        format.json { render :show, status: :created, location: @food }
      else
        format.html { render :new }
        format.json { render json: @food.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foods/1
  # PATCH/PUT /foods/1.json
  def update
    respond_to do |format|
      if @food.update(food_params)
        format.html { redirect_to @food, notice: 'Food was successfully updated.' }
        format.json { render :show, status: :ok, location: @food }
      else
        format.html { render :edit }
        format.json { render json: @food.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foods/1
  # DELETE /foods/1.json
  def destroy
    @food.destroy
    respond_to do |format|
      format.html { redirect_to foods_url, notice: 'Food was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food
      @food = Food.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def food_params
      params[:food].permit(:placement, :image, :name, :confirmed_gf, :price, :taste, :difficulty, :where_to_find, :food_category_id)
    end
    
    def save_my_previous_url
      # session[:previous_url] is a Rails built-in variable to save last url.
      session[:my_previous_url] = URI(request.referer || '').path
      @back_url = session[:my_previous_url]
    end
end
