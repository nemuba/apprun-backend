module Api
  module V1
    class RegistrationsController < ApiController
    before_action :set_registration, only: [:show, :update, :destroy]

    # GET /registrations
    def index
      @registrations = Registration.includes(:race, :player, :modality).order(created_at: :desc)

      render json: @registrations
    end

    # GET /registrations/1
    def show
      render json: @registration
    end

    # POST /registrations
    def create
      @registration = Registration.new(registration_params)

      if @registration.save
        render json: @registration, status: :created
      else
        render json: @registration.errors, status: :im_used
      end
    end

    # PATCH/PUT /registrations/1
    def update
      if @registration.update(registration_params)
        render json: @registration
      else
        render json: @registration.errors, status: :unprocessable_entity
      end
    end

    # DELETE /registrations/1
    def destroy
      @registration.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_registration
        @registration = Registration.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def registration_params
        params.require(:registration).permit(:race_id, :modality_id, :player_id)
      end
  end

  end
end
