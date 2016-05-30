module ClientSessionsHelper
  def log_in(client)
      session[:client_id] = client.id
  end
    # Returns the current logged-in user (if any).
  def current_client
      @current_client ||= Client.find_by(id: session[:client_id])
  end

  def logged_in?
      !current_client.nil?
  end

  def log_out
      session.delete(:client_id)
      @current_client = nil
  end
end
