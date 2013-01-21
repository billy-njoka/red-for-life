class UsersController < ApplicationController

  def new
@user = User.new
@title = "Sign up"
  end

def create
@user = User.new(params[:user])
if @user.save
sign_in @user
flash[:success] = "You have successfully signed up a new admin user!"
redirect_to @user
else
@title = "Sign up"
render 'new'
end
end

  def show
@user= User.find(params[:id])
@title=@user.first_name
  end

 def index
@user=User.all
 end
end
