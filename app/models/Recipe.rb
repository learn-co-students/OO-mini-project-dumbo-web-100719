class Recipe

  attr_reader :recipe_name

  @@all = []

  def initialize(recipe_name)
    @recipe_name = recipe_name

    @@all << self
  end

  # def users #should return the user instances who have recipe cards with this recipe

  # end

  # def ingredients # should return all of the ingredients in this recipe

  # end

  # def allergens #should return all of the Ingredients in this recipe that are allergens for Users in our system.

  # end

  # def add_ingredients #should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe

  # end

  def self.all #should return all of the recipe instances
    @@all
  end

  # def self.most_popular #should return the recipe instance with the highest number of users (the recipe that has the most recipe cards)

  # end

end






