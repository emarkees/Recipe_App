require 'rails_helper'

RSpec.describe 'Recipes', type: :request do
  let!(:user) do
    User.create(name: 'sa', email: 'aelkholy60@gmail.com', password: '432dsa364#')
  end
  let!(:recipe) do
    Recipe.create(name: 'recipe 1', preparation_time: 1.2, cooking_time: 1.3,
                  description: 'this is a recipe', public: true, user:)
  end
  before do
    sign_in user
    get '/public_recipes'
  end
  describe 'Public_recipes GET/ index ' do
    it 'returns Public_recipes http success' do
      expect(response).to have_http_status(200)
    end
    it 'renders Public_recipes template' do
      expect(response).to render_template(:index)
    end

    it 'renders detail responsed body with correct recipe name' do
      expect(response.body).to include(recipe.name.to_s)
    end
  end
end
