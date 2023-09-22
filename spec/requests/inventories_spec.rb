require 'rails_helper'

RSpec.describe 'Recipes', type: :request do
  let!(:user) do
    User.create(name: 'sa', email: 'aelkholy60@gmail.com', password: '432dsa364#')
  end
  let!(:inventory) do
    Inventory.create(name: 'Inventory 1', user:)
  end
  before do
    sign_in user
    get '/inventories'
  end
  describe 'Inventory GET/ index ' do
    it 'returns inventory http success' do
      expect(response).to have_http_status(200)
    end
    it 'renders inventory template' do
      expect(response).to render_template(:index)
    end
  end

  describe "inventory GET /show'" do
    before do
      get "/inventories/#{inventory.id}"
    end

    it 'returns success for detail inventory' do
      expect(response).not_to have_http_status(400)
    end

    it 'returns success for detail inventory' do
      expect(response).to have_http_status(200)
    end

    it 'renders inventory detail template' do
      expect(response).to render_template(:show)
    end

    it 'renders inventory detail template' do
      expect(response).not_to render_template(:index)
    end

    it 'inventory detail responsed body with correct inventory name' do
      expect(response.body).to include(inventory.name.to_s)
    end
  end
end
