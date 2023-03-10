module AuthorizationHelper
  private
  def confirm_login
    unless current_user
      redirect_to login_path, notice: "You must login in to do that."
    end
  end
end