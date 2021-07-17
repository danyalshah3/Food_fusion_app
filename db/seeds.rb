# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Recipe.create(name: "Egg rolls", image_url: "https://www.jocooks.com/wp-content/uploads/2012/11/eggrolls-1-16.jpg", ingredients: "Shrimp, Vegetables", description: "Very popular in the West although not eaten in China, egg rolls are a larger, bulkier version of spring rolls. These are normally deep-fried and are filled with barbecued shrimp, vegetables like cabbage, celery, and bean sprouts", minutes: 10)
Recipe.create(name: "Salt and pepper spare ribs", image_url: "http://images.summitmedia-digital.com/yummyph/images/07-08_2011/08-2011_yummy-ph_recipe_image_spareribs-withsalt-and-pepper_main.jpg", ingredients: "Ribs", description: "One of the most popular rib type dishes in Chinese restaurants, the ribs are marinated for many hours and slow-cooked with the marinade for two to three hours until the meat on the ribs is tender and soft. The ribs are then deep-fried so they will be slightly crispy on the outside and tender and soft on the inside", minutes: 60)
Recipe.create(name: "Satay chicken on skewers", image_url: "https://carlsbadcravings.com/wp-content/uploads/2019/04/Chicken-Satay-8-650x975.jpg", ingredients: "Chicken", description: "Chicken breast of legs marinaded in peanut-flavored satay sauce for hours before being grilled on a grill. Some versions of satay chicken can be a little bit spicy but it depends on the restaurant or take away. This dish is originally from Malaysia but it’s become popular in Chinese restaurants.", minutes: 20)
Recipe.create(name: "Lamb in black pepper sauce", image_url: "https://cdn.shopify.com/s/files/1/1731/2837/articles/Lamb-Chop-with-Black-Pepper-Sauce_800x800.jpg?v=1498536809", ingredients: "Lamb", description: "This dish is made with stir-fried lamb slices, usually sliced onions, and peppers, and is cooked in a black pepper sauce", minutes: 30)
Recipe.create(name: "General Tso's chicken", image_url: "https://www.cookingclassy.com/wp-content/uploads/2014/01/general-tsos-chicken-edit+srgb.-500x500.jpg", ingredients: "Chicken", description: "Chicken cubes are coated in cornstarch and deep-fried, cooked with a sauce that includes hoisin sauce, dark soy sauce, and chili peppers.", minutes: 30)

# 50.times do
#     Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.street_address, zipcode: Faker::Address.zip_code)
    
# end

# 50.times do
#     Recipe.create(name: Faker::Food.dish, image_url: "", ingredients: Faker::Food.ingredient, description: Faker::Food.description, minutes: 60)
# end






