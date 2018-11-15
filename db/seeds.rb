require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
user_serialized = open(url).read
user = JSON.parse(user_serialized)

ingredients = []
user['drinks'].each do |ing_hash|
  ingredients << ing_hash["strIngredient1"]
end
ingredients.each do |ingredient|
  Ingredient.create(name: ingredient)
end
