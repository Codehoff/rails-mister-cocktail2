# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.destroy_all
Cocktail.destroy_all
Dose.destroy_all
ingredients = %w(gingerbeer cucumber vodka lemon ice scotch water rum sugar limes gin bourbon cachaca)
ingredients.each do |ingredient|
    Ingredient.create(name: ingredient )
end

Dose.create(description: "2 slices of", cocktail_id: 1, ingredient_id: 2)
Dose.create(description: "4 cl", cocktail_id: 1, ingredient_id: 3)
Dose.create(description: "200 ml", cocktail_id: 1, ingredient_id: 1)
Dose.create(description: "2 hands full of", cocktail_id: 1, ingredient_id: 5)




