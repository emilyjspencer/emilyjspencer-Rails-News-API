Rails.application.routes.draw do
  #For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'stories#top'

  get 'stories/:id', to: 'stories#show', as: :story
end
