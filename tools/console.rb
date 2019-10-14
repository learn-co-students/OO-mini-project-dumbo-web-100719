require_relative '../config/environment.rb'

dough = Ingredient.new("dough")
cheese = Ingredient.new("cheese")
sauce = Ingredient.new("sauce")
peanut = Ingredient.new("peanut")
meat = Ingredient.new("chopped meat")
spaghetti = Ingredient.new("spaghetti")
soy = Ingredient.new("soy")
lettuce = Ingredient.new("lettuce")
tomato = Ingredient.new("tomato")
bread = Ingredient.new("bread")


javone = User.new("javone")
diego = User.new("diego")
alina = User.new("alina")

pizza = Recipe.new("pizza")
pizza.add_ingredients([dough,cheese,sauce])
bolognese = Recipe.new("pasta")
pizza.add_ingredients([spaghetti,meat,sauce])
salad = Recipe.new("salad")
salad.add_ingredients([tomato,lettuce])
pb_sandwich = Recipe.new("pb sandwich")
pb_sandwich.add_ingredients([bread,peanut])


grandma_card = RecipeCard.new("01/01/1980", 5, javone, pizza)
alina_card1 = RecipeCard.new("10/12/2019", 1, diego,pizza)
diego_card = RecipeCard.new("3/2/2018", 3, alina, bolognese)
alina_card2 = RecipeCard.new("2/14/2017",5,alina,salad)
alina_card3 = RecipeCard.new("2/14/2017",1,alina,pb_sandwich)
alina_card4 = RecipeCard.new("2/14/2017",4,alina,pizza)



diego.declare_allergy(peanut)
diego_allergens = diego.allergens

javone.declare_allergy(peanut)

alina.declare_allergy(cheese)
alina_allergens = alina.allergens


binding.pry
