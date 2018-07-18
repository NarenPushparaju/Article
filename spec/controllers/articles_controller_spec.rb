require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  context 'get#index' do
    it 'returns success response' do
      get :index
      expect(response).to be_success
    end
    end
    context 'get#new' do
      it 'returns success response' do
        article=Article.create(title: 'jgyggg0',description: 'adffffafae')
        get :show ,params: {id: article}
        expect(response).to be_success
      end
      end
      context 'route to index' do
        it 'routes to index ' do
        expect(get: '/articles').to route_to('articles#index')
        end
        end
        context 'route to new' do
          it 'routes to index ' do
            expect(get: '/articles/new').to route_to('articles#new')
          end
        end
      context 'route to show' do
        it 'routes to show ' do
          expect(get: '/articles/2').to route_to('articles#show',id: "2")
        end
      end
      context 'route to destroy' do
        it "routes to destroy" do
          expect(delete: "/articles/1").to route_to('articles#destroy',id: "1")
        end
      end
  end
