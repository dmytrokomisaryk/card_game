Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope module: 'api' do
    namespace :v1 do
      resource :user, only: [:create] do
        post :login
      end
      resource :card, only: [] do
        get :one_more
      end
    end
  end
end
