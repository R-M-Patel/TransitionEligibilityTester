module SessionsHelper
    
    # Logs in a user
    def log_in(user)
        session[:user_id] = user.id
    end
    
    # Returns the current logged-in user
    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end
    
    # True if a user is logged in
    def logged_in?
        !current_user.nil?
    end
    
end