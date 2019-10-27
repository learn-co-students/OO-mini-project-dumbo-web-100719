class RecipeCard

  attr_accessor :recipe, :user, :rating, :ingredient
  @@all = []

  def initialize(recipe, user, date, rating, ingredient)
    @recipe = recipe
    @user = user 
    @date = date
    @rating = rating
    @@all << self
  end

  def self.all 
    @@all 
  end




end