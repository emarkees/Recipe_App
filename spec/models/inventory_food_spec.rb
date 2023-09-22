require 'rails_helper'

describe 'Inventory Food Model Tests' do
  user = User.new(name: 'sa', email: 'aelkholy60@gmail.com', password: '432dsa364#')
  inventory = Inventory.new(name: 'inventory 1', user:)
  food = Food.new(name: 'apple', measurement_unit: 'units', price: 3)
  inventory_food = InventoryFood.new(quantity: 3, inventory:, food:)
  it 'should be a vaild inventory food' do
    expect(inventory_food).to be_valid
  end

  it 'inventory food must conatin inventory and food' do
    inventory_food.food = nil
    expect(inventory_food).to_not be_valid
    inventory_food.food = food
  end

  it 'can only accept integer values for quantity' do
    inventory_food.quantity = 'test'
    expect(inventory_food).to_not be_valid
  end
end
