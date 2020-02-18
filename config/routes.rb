Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
      root to: 'books#index'
  post '/' => 'books#create'
  get '/:id/edit' => 'books#edit', as: 'edit_book'
  get '/:id' => 'books#show', as: 'book'
  patch '/:id' => 'books#update'
  delete '/:id' => 'books#destroy'
end
