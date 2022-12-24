class UsersController < ApplicationController

def index
  @user=current_user
end

def edit
  @user = User.find(params[:id])
end

def show
  @book=Book.new
  @books=Book.all
  @user=current_user
end

def update
  @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
end

private

  def user_params
    params.require(:user).permit(:name, :profile_image,:introduction)
  end

  def is_matching_login_user
    user_id = params[:id].to_i
    login_user_id = current_user.id
    if(user_id != login_user_id)
      redirect_to post_images_path
    end
  end
end
