module Api::V1
  class ApiController < ApplicationController
    include ActionController::HttpAuthentication::Token::ControllerMethods

    def authenticate_user!
      authenticate_or_request_with_http_token do |token, option|
        User.find_by(token: token) 
      end
    end
  end
end