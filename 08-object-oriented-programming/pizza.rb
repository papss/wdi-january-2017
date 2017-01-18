
# When I order a pizza,
# the cost is returned
def order_pizza(dough, ingredients)
  cost = 10
  
  cost += 4 if dough == :gluten_free
  
  ingredients.each do |ingredient|
    ingredient_cost = case ingredient
    when :cheese
      2
    when :pepperoni
      3
    when :green_peppers
      1
    when :anchovies
      5
    when :sausage
      6      
    when :chicken
      3   
    end
    cost += ingredient_cost
  end
  
  return cost
end

pepperoni_pizza_cost = order_pizza(:regular, [:cheese, :pepperoni])
puts "Cost of pepperoni pizza is $#{ pepperoni_pizza_cost }"

gluten_free_pizza_cost = order_pizza(:gluten_free, [:green_peppers, :anchovies])
puts "Cost of gluten free pizza is $#{ gluten_free_pizza_cost }"

meat_lovers_pizza_cost = order_pizza(:regular, [:pepperoni, :sausage, :chicken])
puts "Cost of meat lovers pizza is $#{ meat_lovers_pizza_cost }"
