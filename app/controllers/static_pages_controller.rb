class StaticPagesController < ApplicationController
  layout :home_layout
  
  def home
    @user ||= current_user
  end

  def help
  end
  
  def contact
  end
  
  def about
  end
  
  private
    def home_layout
      user_signed_in? ? "application" : "splash"
    end
end
