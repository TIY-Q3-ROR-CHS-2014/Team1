class UsersController < ApplicationController
  def index
    @users = User.all
    respond_to do |format|
      format.json { render json: @users.as_json }
    end
  end

  def show
    @user = User.find(params[:id])
    respond_to do |format|
      format.json { render json: @user.as_json }
    end
  end

  def destroy
    @post = Post.find params[:id]
    @post.delete
    respond_to do |format|
      format.json { render json: @user.as_json }
    end
  end
end