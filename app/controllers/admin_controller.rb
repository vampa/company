class AdminController < ApplicationController
  layout "admin"
  before_filter :allowed_access, :current_tab

  def dash
    @posts = Post.all
  end

  def projects
  end

  def messages
  end

  def blog
  end

  private

  def allowed_access
    redirect_to signin_path if !current_user
  end

  def current_tab
		return @current = "projects" if ["projects"].include?(params[:action])
		return @current = "messages" if ["messages"].include?(params[:action])
		return @current = "blog" if ["blog"].include?(params[:action])
		return @current = "dash"
  end

end
