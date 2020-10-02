class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller? #deviseのコントローラーから呼び出された場合
 #application_controllerにbefore_acitonを使っているので、全てのアクションが、
 #実行される前に、before_action :configure_permitted_parameters, if: :devise_controller?が実行されることになります。

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
