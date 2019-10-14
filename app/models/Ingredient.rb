class Ingredient
    @@all = []

    attr_accessor :ingredients
   
def initialize(ingredient)
    @ingredient = ingredient
    @@all << self
end


def self.all
    @@all
end

def self.most_common_allergen
    self.all.max_by {|ingredient| Allergy.all.select {|allergen| allergen.ingredient == ingredient}.count}

end
end