module RecipesHelper

  def determine_diff(rating)
    if rating > 4 
      @rate = "Hard"
    elsif rating == 3 
      @rate = "Medium"
    elsif rating == 2 
      @rate = "Normal"
    elsif rating == 1 
      @rate = "Easy"
    else 
      @rate = "Simple"
    end 
  end

  def vote_up(recipe_id)
    recipe = Recipe.find(recipe_id)
    votes = recipe.votes
    recipe.update(votes: votes + 1)
  end


end
