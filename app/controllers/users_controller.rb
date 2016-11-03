class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = user.new(params[:user])
    if @user.save
      flash[:notice] = "You've signed up successfully"
      flash[:color] = "valid"
    else
      flash[:notice] = "Form is invalid"
      flash[:color] = "invalid"
    end
    render "new"
  end
end
