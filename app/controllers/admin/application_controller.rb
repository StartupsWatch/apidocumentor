class Admin::ApplicationController < ActionController::Base
  protect_from_forgery
  layout "#{Rails.root}/app/views/layouts/application"
  before_filter :authenticate
  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == AppConfig["username"] && password == AppConfig["password"]
    end
  end
end
