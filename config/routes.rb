Rails.application.routes.draw do
  
  resources :products, :only => [ :index ]
  get '/medicare', :to => 'products#medicare', :as => 'medicare'
  get '/medi-share', :to => 'products#medi_share', :as => 'medi_share'
  
  get  '/contact-us', :to => 'emails#new', :as => 'new_email'
  post '/contact-us', :to => 'emails#create', :as => 'emails'
  
  get '/about', :to => 'base_pages#about'
  get '/service_area', :to => 'base_pages#service_area'
  
  get '/sitemap.xml' => 'sitemaps#index', :format => 'xml', :as => 'sitemap'
  
  root :to => 'base_pages#home'
end
