# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).save.
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

SystemMetric.new.save

FoodCategory.new(category_name: "breakfast").save
FoodCategory.new(category_name: "lunch").save
FoodCategory.new(category_name: "dinner").save
FoodCategory.new(category_name: "snacks").save
FoodCategory.new(category_name: "dessert").save

BlogPost.new(site_url: "http://zammysgfzone.herokuapp.com/", title: "Commenting", blog_content: "Please use our new comment features to more easily let us know how you feel about the site! To comment you need to make an account, but fear not we only need a username and password! Comment away!", user_id: 1, image_url: "http://devsteam.com/wp-content/uploads/2013/08/Blog-Commenting.jpg" ).save


Recipe.new(difficulty: 2, time: 45, taste_rating: 3, confirmed_gf: "Yes", user_id: 1, food_category_id: 3, title: "Baked Salmon in foil", placement: "dinner", description: "A gluten free recipe!").save

Step.new(title: "Baked Salmon in foil", step: "Preheat oven to 375 degrees", image: "", link: "", recipe_id: 1).save
Step.new(title: "Baked Salmon in foil", step: "Cut slits in salmon horizontally.", image: "", link: "", recipe_id: 1).save
Step.new(title: "Baked Salmon in foil", step: "Sprinkle with salt and pepper", image: "", link: "", recipe_id: 1).save
Step.new(title: "Baked Salmon in foil", step: "In medium bowl, mix liquid ingredients together.", image: "", link: "", recipe_id: 1).save
Step.new(title: "Baked Salmon in foil", step: "Place salmon in large ziplock bag and cover with m...", image: "", link: "", recipe_id: 1).save
Step.new(title: "Baked Salmon in foil", step: "Marinate in refrigerator about 1 hour, turning occ...", image: "", link: "", recipe_id: 1).save
Step.new(title: "Baked Salmon in foil", step: "Place salmon in aluminum foil, cover with marinade...", image: "", link: "", recipe_id: 1).save
Step.new(title: "Baked Salmon in foil", step: "Place sealed salmon in a glass baking dish, bake f...", image: "", link: "", recipe_id: 1).save

Recipe.new(difficulty: 1, time: 8, taste_rating: 3, confirmed_gf: "yes", user_id: 1, food_category_id: 2, title: "Pasta Parm", placement: "lunch", description: "A gluten free recipe!").save

Step.new(title: "Pasta Parm", step: "Bring pot of water to a rapid boil", image: "", link: "", recipe_id: 2).save
Step.new(title: "Pasta Parm", step: "Add desired amount of pasta to the boiling water a...", image: "", link: "", recipe_id: 2).save
Step.new(title: "Pasta Parm", step: "Strain water, add butter and parm", image: "", link: "", recipe_id: 2).save
Step.new(title: "Pasta Parm", step: "Enjoy!!", image: "", link: "", recipe_id: 2).save

Recipe.new(difficulty: 1, time: 30, taste_rating: 4, confirmed_gf: "Yes", user_id: 1, food_category_id: 3, title: "Spanish Rice", placement: "dinner", description: "A gluten free recipe!").save

Step.new(title: "Spanish Rice", step: "Heat oil in a large skillet over medium heat.", image: "", link: "", recipe_id: 3).save
Step.new(title: "Spanish Rice", step: "Add onion and cook until tender (approx 5 mins)", image: "", link: "", recipe_id: 3).save
Step.new(title: "Spanish Rice", step: "Mix in rice and stir until the rice browns a bit.", image: "", link: "", recipe_id: 3).save
Step.new(title: "Spanish Rice", step: "Stir in chicken broth and salsa.", image: "", link: "", recipe_id: 3).save
Step.new(title: "Spanish Rice", step: "Cover, reduce heat and simmer 20 mins until absorb...", image: "", link: "", recipe_id: 3).save

Recipe.new(difficulty: 2, time: 35, taste_rating: 4, confirmed_gf: "Yes", user_id: 1, food_category_id: 3, title: "\"Chick Fil A\" nuggets", food_category: nil, placement: "dinner", description: "A gluten free recipe!").save

Step.new(title: "\"Chick Fil A\" nuggets", step: "Whisk milk and egg together in a large bowl", image: "", link: "", recipe_id: 4).save
Step.new(title: "\"Chick Fil A\" nuggets", step: "Cut chicken into cubes, trimming off any fat.", image: "", link: "", recipe_id: 4).save
Step.new(title: "\"Chick Fil A\" nuggets", step: "Mix chicken into the milk mixture, making sure all...", image: "", link: "", recipe_id: 4).save
Step.new(title: "\"Chick Fil A\" nuggets", step: "Refrigerate for 30 mins.", image: "", link: "", recipe_id: 4).save
Step.new(title: "\"Chick Fil A\" nuggets", step: "In a seperate bowl, combine the dry ingredients an...", image: "", link: "", recipe_id: 4).save
Step.new(title: "\"Chick Fil A\" nuggets", step: "Heat at least 1\" of oil on medium/high heat.", image: "", link: "", recipe_id: 4).save
Step.new(title: "\"Chick Fil A\" nuggets", step: "Remove chicken from refrigerator and coat in flour...", image: "", link: "", recipe_id: 4).save
Step.new(title: "\"Chick Fil A\" nuggets", step: "Place in hot oil and cook for at least 2-3mins or ...", image: "", link: "", recipe_id: 4).save
Step.new(title: "\"Chick Fil A\" nuggets", step: "Place cooked chicken on paper towels to soak up an...", image: "", link: "", recipe_id: 4).save
Step.new(title: "\"Chick Fil A\" nuggets", step: "Repeat the same steps with the rest of the chicken...", image: "", link: "", recipe_id: 4).save