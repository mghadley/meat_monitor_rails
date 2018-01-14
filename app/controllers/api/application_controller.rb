class Api::ApplicationController < ActionController::API
  include Api::Concerns::Response
  include Api::Concerns::ExceptionHandler  
end