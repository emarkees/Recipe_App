require 'rails_helper'

RSpec.describe 'Recipes', type: :system do
  describe 'recipes index page' do
    before(:each) do
      user = User.create(name: 'Ahmad', email: 'test@example.com', password: 'password')
      Inventory.new(user:, name: 'Inventory 1')
      sign_in user
      visit inventories_path
    end
    let(:inventories) { Inventory.all }
    it 'shows the correct name' do
      inventories.each do |inventory|
        expect(page).to have_content(inventory.name)
      end
    end

    it 'displays a link to add a inventory' do
      expect(page).to have_link('New inventory', href: new_inventory_path)
    end
  end
end
