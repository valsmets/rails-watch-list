Rails.application.routes.draw do 
  resources :lists, only: [ :show, :new, :create, :index, :destroy ]do
    resources :bookmarks, only: [ :new, :create ] # /lists/1/bookmarks/new
  end

  resources :bookmarks, only: [ :destroy ]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
