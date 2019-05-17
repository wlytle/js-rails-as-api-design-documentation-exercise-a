Rails.application.routes.draw do
  get '/dog_search', to: "dog#search"
end
