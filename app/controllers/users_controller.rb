class UsersController < ApplicationController

  # GET /users or /users.json
  def index
    @users = User.all
  end


  # POST /users or /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.json { render :show, status: :created, location: @user }
      else
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:email, :firstname, :lastname)
    end
end
