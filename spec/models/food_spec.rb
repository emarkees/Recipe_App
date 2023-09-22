require 'rails_helper'

describe 'Food Model Tests' do
  food = Food.new(name: 'apple', measurement_unit: 'units', price: 3)

  it 'should be a vaild recipe' do
    expect(food).to be_valid
  end

  it 'price of food can only accept integer values' do
    food.price = 'price'
    expect(food).to_not be_valid
  end
end
