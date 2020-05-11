module Api
  module V1
    class RacesController < ApiController
      before_action :authenticate_user
      before_action :set_race, only: [:show, :update, :destroy]

      # GET /races
      def index
        @races = Race.includes(:modalities, :sponsors).order(local: :asc,date_race: :desc)

        render json: @races
      end

      # GET /races/1
      def show
        render json: @race
      end

      # POST /races
      def create
        @race = Race.new(race_params)

        if @race.save
          render json: @race, status: :created
        else
          render json: @race.errors.full_messages, status: :non_authoritative_information
        end
      end

      # PATCH/PUT /races/1
      def update
        if @race.update(race_params)
          render json: @race
        else
          render json: @race.errors.full_messages , status: :non_authoritative_information
        end
      end

      # DELETE /races/1
      def destroy
        if @race.destroy
          render json: {msg: 'Delete with success'}
        else
          render json: @race, status: :non_authoritative_information
        end
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_race
          @race = Race.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def race_params
          params.require(:race).permit(:local, :status, :date_race, modality_ids: [], sponsor_ids: [])
        end
    end

  end
end