class User

  attr_reader :user_name

  @@all = []

  def initialize(user_name)
    @user_name = user_name 

    @@all << self
  end

  # def recipes #should return all of the recipes this user has recipe cards for

  # end

  # def add_recipe_card #should accept a recipe instance as an argument, as well as a date and rating, and create a new recipe card for this user and the given recipe

  # end

  # def eclare_allergy #should accept anIngredient instance as an argument, and create a new Allergy instance for this User and the given Ingredient

  # end


  # def allergens #should return all of the ingredients this user is allergic to

  # end

  # def top_three_recipes #should return the top three highest rated recipes for this user.

  # end

  # def most_recent_recipe #should return the recipe most recently added to the user's cookbook.

  # end

  def self.all #should return all of the User instances
    @@all
  end
  
end



# Bonus

# User#safe_recipes should return all recipes that do not contain ingredients the user is allergic to
# What other methods might be useful to have?
