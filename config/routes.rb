Rails.application.routes.draw do
  scope '/api' do
    post 'user_token' => 'user_token#create'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/story_contents', to: 'story_content#index'
  post '/story_contents', to: 'story_content#create'
  get '/story_contents/:id', to: 'story_content#show', as: 'story_content'
  patch '/story_contents/:id', to: 'story_content#update'
  delete '/story_contents/:id', to: 'story_content#destroy' 

  resources :story, only: [:index, :create, :show, :update] do 
    resources :content, only: [:index, :create]
  end
end
