Rails.application.routes.draw do

  root to: "links#index"

  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :links, only: [:create]
    end
  end

end
