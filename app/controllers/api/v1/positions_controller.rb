module Api
  module V1
    class PositionsController < ApiController
      before_action :authenticate_user
      before_action :set_position, only: [:show, :update, :destroy]

      # GET /positions
      def index
        @positions = Position.all

        render json: @positions
      end

      # GET /positions/1
      def show
        render json: @position
      end

      # POST /positions
      def create
        @position = Position.new(position_params)

        if @position.save
          render json: @position, status: :created
        else
          render json: @position.errors.full_messages, status: :non_authoritative_information
        end
      end

      # PATCH/PUT /positions/1
      def update
        if @position.update(position_params)
          render json: @position
        else
          render json: @position.errors.full_messages, status: :non_authoritative_information
        end
      end

      # DELETE /positions/1
      def destroy
        if @position.destroy
          render json: {msg: 'Delete with success'}
        else
          render @position.errros.full_messages, status: :non_authoritative_information
        end
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_position
          @position = Position.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def position_params
          params.require(:position).permit(:description, :score)
        end
    end

  end
end