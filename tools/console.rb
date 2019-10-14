require_relative '../config/environment.rb'

#recipes -- need to know: recipe cards && array of ingredients
taco_salad = Recipe.new("Taco Salad") #include ingredients somehow
ziti = Recipe.new("Ziti")
pita = Recipe.new("Pita")

#users -- need to know: recipe cards && array of allergies
alex = User.new("Alex") #anything else to add?
stephen = User.new("Stephen")
john = User.new("John")

#ingredients -- need to know: recipe cards && recipe ingredients
lettuce = Ingredient.new("Lettuce") #anything else to add?
tomatoes = Ingredient.new("Tomatoes")
hummus = Ingredient.new("Hummus")
falafel = Ingredient.new("Falafel")
pasta = Ingredient.new("Pasta")
ground_beef = Ingredient.new("Ground Beef")
peanut_sauce = Ingredient.new("Peanut Sauce")

#allergies
Allergy.new(alex, hummus)
Allergy.new(alex, peanut_sauce)
Allergy.new(alex, falafel)
Allergy.new(stephen, peanut_sauce)
Allergy.new(stephen, ground_beef)
# Allergy.new(stephen, lettuce)
Allergy.new(john, lettuce)

#recipe cards
RecipeCard.new(alex, taco_salad)
RecipeCard.new(stephen, taco_salad)
RecipeCard.new(stephen, ziti)
RecipeCard.new(john, ziti)
RecipeCard.new(john, pita)

#recipe ingredients
RecipeIngredient.new(taco_salad, lettuce)
RecipeIngredient.new(taco_salad, tomatoes)
RecipeIngredient.new(taco_salad, ground_beef)
RecipeIngredient.new(ziti, ground_beef)
RecipeIngredient.new(ziti, tomatoes)
RecipeIngredient.new(ziti, pasta)
RecipeIngredient.new(pita, falafel)
RecipeIngredient.new(pita, hummus)
RecipeIngredient.new(pita, peanut_sauce)




binding.pry
