
recipe_name = "Bomb.com Mac and Cheese"
recipe_ingredients = "milk, butter, cheese, elbow pasta"
recipe_cook_time = "20 minutes"
  

recipe1 = Recipe.create(:name => recipe_name, :ingredients => recipe_ingredients, :cook_time => recipe_cook_time)
recipe2 = Recipe.create(:name => "waldorf salad", :ingredients => "apples, cabbage, oil, vinegar", :cook_time => "0")