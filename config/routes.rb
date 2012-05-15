ApiDocumentor::Application.routes.draw do
  root :to => "projects#index"
  scope "admin", :module => "admin" do
    resources :projects, :as => :admin_projects
    resources :api_types, :as => :admin_api_types
    resources :method_types, :as => :admin_method_types
  end
  
  get "/projects/:project_slug"                            => "projects#show"
  get "/projects/:project_slug/apis/:id"                   => "api_types#show"
  get "/projects/:project_slug/apis/:api_id/methods/:id"   => "method_types#show"
  
  get "/http-response-codes"                               => "static_files#http_response_codes"
end