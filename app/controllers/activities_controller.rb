class ActivitiesController < ApplicationController
    before_action :find_activity, only: [:show]

    def index
        activities = Activity.all
        render json: activities
    end

    def show
        unless @activity
            status = :not_found
            payload = {error: "Activity not found"}
        else 
            payload = @activity
            status = :ok
        end
        render :json =>payload, :status => status
    end

    private

    def find_activity
        @activity = Activity.find_by_id(params[:id])
    end

    def person_params
        params.require(:activity).permit(:name)
    end

end
