Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/students', to: 'students#index', as:'students'
  get '/students/new', to: 'students#new', as:'new_student'
  get '/students/:id', to: 'students#show', as:'student'
  get '/students/:id/edit', to: 'students#edit', as:'edit_student'
  
  post '/students', to: 'students#create'
  patch '/students/:id', to: 'students#update'
  delete '/students/:id', to: 'students#destroy'

  get '/students/:id/activate', to: 'students#activate', as: 'activate_student'
  
end
