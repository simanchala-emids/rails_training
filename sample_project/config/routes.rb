Rails.application.routes.draw do
  get 'sample/show'
  get 'demo/surenthar', to: 'demo#index';
  get 'demo/index';
  # get 'sample/index';
  get ':controller(/:action(/:id))';
  root 'demo#index';
end
