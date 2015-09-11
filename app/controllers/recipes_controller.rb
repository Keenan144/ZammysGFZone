class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]

  # GET /recipes
  # GET /recipes.json
  def index
    @recipes = Recipe.all
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show

    @recipe = Recipe.find_by(id: params[:id])
    comments = @recipe.comments
    @comments = comments.paginate(page: params[:page], per_page: 10)
    @comment = Comment.new
    if @recipe.views != nil 
      views = @recipe.views
      @recipe.update(views: views + 1)
    else
      @recipe.update(views: 1)
    end
  end

  def breakfast_recipes
   recipes = Recipe.where(food_category_id: 1)
    @recipes = recipes.paginate(page: params[:page], per_page: 3)
  end

  def lunch_recipes
   recipes = Recipe.where(food_category_id: 2)
    @recipes = recipes.paginate(page: params[:page], per_page: 3)
  end

  def dinner_recipes
   recipes = Recipe.where(food_category_id: 3)
    @recipes = recipes.paginate(page: params[:page], per_page: 3)
  end

  # GET /recipes/new
  def new
    @recipe = Recipe.new
    @step = Step.new
  end

  # GET /recipes/1/edit
  def edit
    @step = Step.new
  end

  # POST /recipes
  # POST /recipes.json
  def create
    @recipe = Recipe.new(recipe_params)

    respond_to do |format|
      if @recipe.save

        if @recipe.placement == "breakfast"
          @recipe.update(food_category_id: 1)
        elsif @recipe.placement == "lunch"
          @recipe.update(food_category_id: 2)
        elsif @recipe.placement == "dinner"
          @recipe.update(food_category_id: 3)
        elsif @recipe.placement == "snacks"
          @recipe.update(food_category_id: 4)
        elsif @recipe.placement == "dessert"
          @recipe.update(food_category_id: 5)
        end

        
        format.html { redirect_to @recipe, notice: 'Recipe was successfully created.' }
        format.json { render :show, status: :created, location: @recipe }
      else
        format.html { render :new }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipes/1
  # PATCH/PUT /recipes/1.json
  def update
    respond_to do |format|

      if @recipe.update(recipe_params)
        if @recipe.placement == "breakfast"
          @recipe.update(food_category_id: 1)
        elsif @recipe.placement == "lunch"
          @recipe.update(food_category_id: 2)
        elsif @recipe.placement == "dinner"
          @recipe.update(food_category_id: 3)
        elsif @recipe.placement == "snacks"
          @recipe.update(food_category_id: 4)
        elsif @recipe.placement == "dessert"
          @recipe.update(food_category_id: 5)
        end
        format.html { redirect_to @recipe, notice: 'Recipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe }
      else
        format.html { render :edit }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipes/1
  # DELETE /recipes/1.json
  def destroy
    @recipe.destroy
    respond_to do |format|
      format.html { redirect_to recipes_url, notice: 'Recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_params
      params[:recipe].permit(:title, :difficulty, :time, :taste_rating, :confirmed_gf, :user_id, :placement, :votes, :views, :description, :image)
    end
  end
