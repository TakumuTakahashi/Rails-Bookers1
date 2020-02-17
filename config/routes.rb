Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'books' => 'books#index'
  post 'books' => 'books#create'
  get 'books/new' => 'books#new', as: 'new_book'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  get 'books/:id' => 'books#show', as: 'book'
  patch 'books/:id' => 'books#update'
  delete 'books/:id' => 'books#destroy'
end
