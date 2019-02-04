Rails.application.routes.draw do
  get 'gossip/:id', to: 'shows#gossip', as: 'gossip'
  get 'dynamic_pages/welcome'
  root 'static_pages#home'
  get '/team', to: 'static_pages#team'
  get '/contact', to: 'static_pages#contact'
  get 'welcome/:first_name', to: 'dynamic_pages#welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
