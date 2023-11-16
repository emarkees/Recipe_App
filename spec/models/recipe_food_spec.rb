require 'rails_helper'

describe 'Recipe Food Model Tests' do
  user = User.new(name: 'sa', email: 'aelkholy60@gmail.com', password: '432dsa364#')
  recipe = Recipe.new(name: 'recipe 1', preparation_time: 1.2, cooking_time: 1.3,
                      description: 'this is a recipe', public: true, user:)
  food = Food.new(name: 'apple', measurement_unit: 'units', price: 3)
  recipe_food = RecipeFood.new(quantity: 3, recipe:, food:)
  it 'should be a vaild recipe food' do
    expect(recipe_food).to be_valid
  end

  it 'recipe food must conatin recipe and food' do
    recipe_food.food = nil
    expect(recipe_food).to_not be_valid
    recipe_food.food = food
  end

  it 'can only accept integer values for quantity' do
    recipe_food.quantity = 'test'
    expect(recipe_food).to_not be_valid
  end
end
