module SessionsHelper

    def log_in(coach)
    session[:coach_id] = coach.id
  end
  # Returns the current logged-in user (if any).
  def current_coach
    @current_coach ||= Coach.find_by(id: session[:user_id])
  end

 def logged_in?
    !current_coach.nil?
  end
    def log_out
    session.delete(:coach_id)
    @current_coach = nil
  end


end
