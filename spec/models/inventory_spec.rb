require 'rails_helper'

describe 'Inventory Model Tests' do
  user = User.new(name: 'sa', email: 'aelkholy60@gmail.com', password: '432dsa364#')
  inventory = Inventory.new(name: 'inventory 1', user:)

  it 'should be a vaild Inventory' do
    expect(inventory).to be_valid
  end

  it 'Inventory can not be vaild without a user' do
    inventory.user = nil
    expect(inventory).to_not be_valid
  end
end
