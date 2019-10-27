require_relative '../config/environment.rb'

adeja = User.new("adeja")
nick = User.new("nick")
gene = User.new("gene")

eggs = Ingredient.new("eggs")
bread = Ingredient.new("bread")
cheese = Ingredient.new("cheese")
milk = Ingredient.new("milk")
tomato = Ingredient.new("tomato")
water = Ingredient.new("water")
flour = Ingredient.new("flour")
pita = Ingredient.new("pita")
ground_beef = Ingredient.new("ground_beef")
pasta = Ingredient.new("pasta")
spices = Ingredient.new("spices")
nuts = Ingredient.new("nuts")
tomato = Ingredient.new("tomato")

gluten = Allergy.new(bread, gene)
lactose = Allergy.new(milk, adeja)
riboflavin = Allergy.new(eggs,nick)
shellfish = Allergy.new(spices, gene)
peanut = Allergy.new(nuts, adeja)
soy = Allergy.new(milk, nick)
meat = Allergy.new(ground_beef, nick)
corn = Allergy.new(flour, adeja)
fish = Allergy.new(spices, gene)
tomatos = Allergy.new(tomato, gene)

tomato_soup = Recipe.new(tomato, "tomato_soup")
scrambled_eggs = Recipe.new(eggs, "Scrambled_eggs")
grilled_cheese = Recipe.new(bread, "grilled_cheese")
chilli = Recipe.new(ground_beef,"chilli")
spagetti = Recipe.new(pasta, "spagetti")
zitti = Recipe.new(ground_beef,"zitti")
steak = Recipe.new(spices, "steak")
tacos = Recipe.new(pita, "tacos")

rc1 = RecipeCard.new(tomato_soup, adeja, Time.now, 5, tomato)
rc2 = RecipeCard.new(scrambled_eggs, gene, Time.now, 3, eggs)
rc3 = RecipeCard.new(grilled_cheese, nick, Time.now, 4, cheese)
rc4 = RecipeCard.new(chilli, gene, Time.now, 2, ground_beef)
rc5 = RecipeCard.new(spagetti, adeja, Time.now, 4, pasta)
rc6 = RecipeCard.new(zitti, adeja, Time.now, 3, pasta)
rc7 = RecipeCard.new(zitti, gene, Time.now, 5, pasta)
rc8 = RecipeCard.new(spagetti, nick, Time.now, 4, pasta)
rc9 = RecipeCard.new(chilli, adeja, Time.now, 5, chilli)
rc10 = RecipeCard.new(steak, nick, Time.now, 2, spices)
rc11 = RecipeCard.new(tacos, adeja, Time.now, 3, pita)
rc12 = RecipeCard.new(grilled_cheese, gene, Time.now, 4, cheese)
rc13 = RecipeCard.new(steak, adeja, Time.now, 4, spices)
rc14 = RecipeCard.new(tomato_soup, nick, Time.now, 3, tomato)

binding.pry
0