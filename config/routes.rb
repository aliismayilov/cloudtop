Rails.application.routes.draw do
  root 'users#index'
  get '/:username', to: 'users#show', as: 'username'
end
