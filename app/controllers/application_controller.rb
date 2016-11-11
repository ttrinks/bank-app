class ApplicationController < ActionController::Base
  before_action :login_process
  protect_from_forgery with: :exception
  include SessionsHelper
end
