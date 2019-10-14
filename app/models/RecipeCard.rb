class RecipeCard

  attr_reader :user, :recipe

  @@all = []

  def initialize(user, recipe)
    @user = user
    @recipe = recipe

    @@all << self
  end

  # def date #should return the date of the entry

  # end

  # def rating #should return the rating (an integer) a user has given their entry

  # end

  def self.all #should return all of the RecipeCard instances
    @@all
  end

end
