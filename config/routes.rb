ActionController::Routing::Routes.draw do |map|
  map.resources :wiki, :controller => 'wiki_pages'

  map.from_plugin :community_engine

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
