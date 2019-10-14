class RecipeIngredient

  attr_reader :recipe, :ingredient

  @@all = []

  def initialize(recipe, ingredient)
    @ingredient = ingredient
    @recipe = recipe
    @@all << self
  end

  # def ingredient #should return the ingredient instance

  # end

  # def recipe #should return the recipe instance

  # end

  def self.all #should return all of the RecipeIngredient instances
    @@all
  end

end


