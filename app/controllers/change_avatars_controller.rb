class ChangeAvatarsController < ApplicationController
  def new
    return if logged_in?
    redirect_to root_url
  end

  def change
    if logged_in?
      avatar_link = params[:change_avatar][:avatar]
      if avatar_link == ""
        flash[:danger] = "Please input your avatar link!"
        redirect_to change_avatar_path
      else
        current_user.update_attribute(:avatar, avatar_link)
        redirect_to current_user
      end
    else
      redirect_to root_url
    end
  end
end