Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/", to: "movies#index"
  get '/movies/:id', to: "movies#show"
  get '/random', to: 'movies#random'
  get '/longest', to: 'movies#longest'
  get '/rating', to: 'movies#rating'
  get '/popular', to: 'movies#popular'
  get '/title_by_letter/:letter', to: 'movies#title_by_letter'
  get '/title', to: 'movies#title'
  get '/year_released/:year', to: 'movies#year_released'
end
