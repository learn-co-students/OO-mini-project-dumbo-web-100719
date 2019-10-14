class Recipe

    attr_accessor :name
    @@all =[]
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_popular
        # this will create a max value based on what the block returns
        # it takes all the elements in Recipe and compare it to card.recipe
        # if they are equal, then increment the count
        
        self.all.max_by {|recipe| RecipeCard.all.select {|card| card.recipe == recipe}.count}

    end
 
    def users
        recipe_cards =RecipeCard.all.select {|recipe_card| recipe_card.recipe == self}
        recipe_cards.map {|rec| rec.user}
    end 

    def ingredients
        ingredients = RecipeIngredient.all.select {|rec| rec.recipe == self}
        ingredients.map {|rec| rec.ingredient}
    end

    def allergens
        ingredients.select {|ingredient| Allergy.all.map {|allergen|allergen.ingredient}.uniq.include?(ingredient)}
    end

    def add_ingredients(ingredients)
        ingredients.each do |ingredient|
            RecipeIngredient.new(self, ingredient)
        end
    end
end