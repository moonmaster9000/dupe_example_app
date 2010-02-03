ActionController::Routing::Routes.draw do |map|
  map.resources :books
  map.resources :authors, :member => 'books', :collection => 'search'
end
