class AdminController < ApplicationController
  layout "admin"
  before_filter :allowed_access

  def dash
    @posts = Post.all
  end

  private

  def allowed_access
    redirect_to signin_path if !current_user
  end

end
