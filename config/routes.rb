Calendario::Application.routes.draw do
  root :to => 'calendar#index'
  match '/calendar(/:year(/:month))' => 'calendar#index', :as => :calendar, :constraints => {:year => /\d{4}/, :month => /\d{1,2}/}
  resources :events
end
