class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception
  
  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format =~ %r{application/json} }
  before_filter :authenticate_user!
  
end
