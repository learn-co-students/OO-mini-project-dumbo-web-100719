class User

    attr_accessor :name
    @@all = []

    def initialize(name)
    @name = name
    @@all << self

    end
    def recipe_cards 
        RecipeCard.all.select {|rec| rec.user == self}
    end
    def recipes
        recipe_cards.map {|rec| rec.recipe}
    end

    def add_recipe_card(recipe, date, rating)
        RecipeCard.new(date, rating,self,recipe)
    end

    def declare_allergy(ingredient)
        Allergy.new(self,ingredient)
    end

    def allergens
       allergy= Allergy.all.select {|allergy| allergy.user == self}
        allergy.map {|allergy| allergy.ingredient}
    end

    def top_three_recipes

    end

    def most_recent_recipe
        recipe_cards.last.recipe
    end

    def safe_recipes
        recipes.reject {|recipe| allergens.include?(recipe)}
    end
    def self.all
    @@all
    end
end