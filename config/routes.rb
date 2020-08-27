Rails.application.routes.draw do
  get 'demployees/index'

  get 'demployees/show'

  get 'demployees/new'

  get 'demployees/create'

  get 'demployees/edit'

  get 'demployees/update'

  get 'demployees/destroy'

  get 'dogs/index'

  get 'dogs/show'

  get 'dogs/new'

  get 'dogs/create'

  get 'dogs/edit'

  get 'dogs/updatee'

  get 'dogs/destroy'

  resources :dogs
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
