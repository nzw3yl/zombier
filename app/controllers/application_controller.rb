class ApplicationController < ActionController::Base
  protect_from_forgery 
  layout :home_layout
  
  private
    def home_layout
      user_signed_in? ? "application" : "splash"
    end
end
