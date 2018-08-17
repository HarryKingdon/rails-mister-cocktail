# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'

Ingredient.delete_all
url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
json = open(url).read
hash = JSON.parse(json)
arr = hash["drinks"]
arr.each { |pair| Ingredient.create(name: pair["strIngredient1"]) }

Cocktail.delete_all
Cocktail.create(name: "Manhattan")
Cocktail.create(name: "Bloody Mary")
Cocktail.create(name: "Margarita")
Cocktail.create(name: "Old Fashioned")
Cocktail.create(name: "Mojito")
Cocktail.create(name: "Daiquiri")
Cocktail.create(name: "Gin and Tonic")
Cocktail.create(name: "Espresso Martini")
Cocktail.create(name: "Martini")
Cocktail.create(name: "White Russian")

