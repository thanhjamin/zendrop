class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    verify_user_path(@user.id)
  end
end
