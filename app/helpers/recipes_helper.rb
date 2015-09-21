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

  def rate(id)
    recipe = Recipe.find(id)
    if recipe.votes != nil
      if recipe.votes >= 10
        @votes = "People really like this"
      elsif recipe.votes >= 5
        @votes = "People like this"
      elsif recipe.votes >= 0
        @votes = "Try this, and tell us what you think"
      elsif recipe.votes < 0
        @votes = "People do not like this recipe, tell us what you think"
      end
    else
      @votes = "This has not been rated yet"
    end
      
        
  end

  def vote_up(recipe_id)
    recipe = Recipe.find(recipe_id)
    votes = recipe.votes
    recipe.update(votes: votes + 1)
  end


end
