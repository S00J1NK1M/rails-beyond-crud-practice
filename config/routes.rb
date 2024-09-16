Rails.application.routes.draw do
  get 'reviews/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :restaurants do
    resources :reviews, only: [:index, :new, :create]

    # Additional routes that related to restaurants go here:
    collection do
      # Custom index
      # /restaurants/whatever_word_you_say
      get :top
    end

    member do
      # Custom show
      # /restaurants/:id/whatever_word_you_say
      get :chef
    end
  end

  resources :reviews, only: [:show, :edit, :update, :destroy]
end
