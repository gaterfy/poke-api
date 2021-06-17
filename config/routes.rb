Rails.application.routes.draw do
  if Rails.env.development?
    mount Rswag::Ui::Engine => '/api-docs'
    mount Rswag::Api::Engine => '/api-docs'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :pokemon, only: [:show, :index]
    end
  end

  resources :houses

  get '/api' => redirect('/swagger/dist/index.html?url=/apidocs/api-docs.json')
end
