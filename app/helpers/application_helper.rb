module ApplicationHelper
end


module SessionsHelper
    def logged_in?
      !session[:cuenta_id].nil?
    end
  end