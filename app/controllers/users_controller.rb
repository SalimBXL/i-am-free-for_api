class UsersController < ApplicationController
    before_action :find_user, only: [:show]
    
    def index
        users = User.all
        render json: users
    end

    def show
        unless @user
            status = :not_found
            payload = {error: "User not found"}
        else 
            payload = { user: @user, activities: @user.user_activities }
            status = :ok
        end

        render :json =>payload, :status => status
    end

    private

    def find_user
        @user = User.find_by_id(params[:id])
    end

    def person_params
        params.require(:user).permit(:username, :available_from, :available_to)
    end

end
