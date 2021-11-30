require 'rails_helper'

RSpec.describe WinesController, type: :controller do
  describe "GET /index" do
    it 'Returns a successfull reponse' do
       get :index
       expect(response).to be_successful 
    end
  end
end
