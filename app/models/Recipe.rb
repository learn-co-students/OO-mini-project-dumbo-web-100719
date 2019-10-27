class Recipe

  attr_accessor :name
  @@all = []

  def initialize(ingredient, name)
    @ingredient = ingredient
    @name = name
    @@all << self
  end

  def self.all 
    @@all
  end
  
  # works
  def ingredients
    RecipeCard.all.select do |ingredient|
      ingredient.recipe == self
    end
  end
  
  def allergens 
      self.ingredients.map do |ingredient|
      ingredient.ingredient
    end
  end

  def users
    self.all.select do |user_instance|
      user_instance.user == self
    end
  end

  def add_ingredients(ingredients)
    ingredients.map do |ingredient|
      RecipeIngredient.new(self,ingredient)
    end
  end


end