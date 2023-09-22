require 'rails_helper'

describe 'Recipe Model Tests' do
  user = User.new(name: 'sa', email: 'aelkholy60@gmail.com', password: '432dsa364#')
  recipe = Recipe.new(name: 'recipe 1', preparation_time: 1.2, cooking_time: 1.3,
                      description: 'this is a recipe', public: true, user:)

  it 'should be a vaild recipe' do
    expect(recipe).to be_valid
  end

  it 'recipe can not be vaild without a user' do
    recipe.user = nil
    expect(recipe).to_not be_valid
  end
end
