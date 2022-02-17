class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    '/buyers/new' # path or :prefix_to_your_route
  end
end
