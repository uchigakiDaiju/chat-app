class UsersController < ApplicationController

  def edit #editアクションでは、ビューファイルを表示するだけなので、アクションの定義のみになります。
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email)
  end

end
