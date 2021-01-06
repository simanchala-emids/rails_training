Rails.application.routes.draw do
  #get 'student/index'
  #match "student/index", :to => "student#index", :via => :get
  #get "student/show"
  #get "student/create"
  #match "raghav/mudhol", :to => "student#index", :via => :get
  #get "student/index"
  #root "student#show"
  get ':controller(/:action(/:id))'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
