ApiDocumentor::Application.routes.draw do
  # Home page
  root to: "projects#index"
  
  # Admin pages
  scope "admin", module: "admin" do
    resources :projects, as: :admin_projects
    resources :api_types, as: :admin_api_types
    resources :method_types, as: :admin_method_types
  end
  
  # API pages
  get "/projects/:project_slug"                            => "projects#show", as: :project_page
  get "/projects/:project_slug/apis/:id"                   => "api_types#show", as: :api_type_page
  get "/projects/:project_slug/apis/:api_id/methods/:id"   => "method_types#show", as: :method_type_page
  
  # Static pages
  get "/http-response-codes"                               => "static_files#http_response_codes"
end