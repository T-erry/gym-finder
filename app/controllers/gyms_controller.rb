class GymsController < ApplicationController
    skip_before_action :authorized, only: [:index]
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :invalid_record

    #GET /gyms
    def index 
    gyms = Gym.all 
    render json: gyms, status: :created
    end
    def show 
        gym = Gym.find(params[:id])
        render json: gym, status: :accepted
    end
    def create 
        gym = Gym.create!(gym_params)
        render json: {success: "Gym created successfully ", gym: gym}, status: :accepted
    end
    def destroy 
        gym = Gym.find(params[:id])
        gym.delete 
        head :no_content
    end

    private
    def gym_params 
        params.permit(:image, :name, :location, :operating_hours, :price, :admin_id)
    end
    def record_not_found
        render json: {errors: "Gym not found"}, status: :created
    end
    def invalid_record (invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
