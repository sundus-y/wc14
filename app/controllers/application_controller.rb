class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :require_login, :load_side_bar

  private
  def not_authenticated
    redirect_to login_path, alert: "Please login first"
  end

  def load_side_bar
    @total_points = {}
    User.all.each do |u|
      @total_points[u.email] = {point: Bracket.total_point(u), goal: u.total_goals}
    end
  end
end
