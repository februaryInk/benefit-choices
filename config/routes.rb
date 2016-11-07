Rails.application.routes.draw do
  
  resources :products, :only => [ :index ]
  get 'products/medicare'
  get 'products/medi_share'
  
  get  '/contact_us', :to => 'emails#new'
  post '/contact_us', :to => 'emails#create'
  
  get '/about', :to => 'base_pages#about'
  get '/service_area', :to => 'base_pages#service_area'
  
  get '/sitemap.xml' => 'sitemaps#index', :format => 'xml', :as => 'sitemap'
  
  root :to => 'base_pages#home'
end
