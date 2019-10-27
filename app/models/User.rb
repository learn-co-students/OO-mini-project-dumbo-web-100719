class User

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self 
  end

  def self.all 
    @@all 
  end

  # works
  def recipe_card
    RecipeCard.all.select do |recipe|
      recipe.user == self
    end
  end

  # works
  def recipes
    recipe_card.map do |r_card|
      r_card.recipe
    end
  end

  # works
  def add_recipe_card(recipe, rating)
    RecipeCard.new(recipe, self, Time.now, rating)
  end 
  
  # works
  def allergens
    Allergy.all.select do |allergies|
    allergies.user == self
    end 
  end
  
  # works
  def declare_allergy(ingredient)
    Allergy.new(ingredient, self)
  end

  # works
  def top_three_recipes
    self.recipe_card.map{ |highest| highest.rating }.max(3)
  end

  # works
  def most_recent_recipe
    recipe_card.last.recipe
  end



  




end