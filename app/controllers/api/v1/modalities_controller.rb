module Api
  module V1
    class ModalitiesController < ApiController
      before_action :authenticate_user
      before_action :set_modality, only: [:show, :update, :destroy]

      # GET /modalities
      def index
        @modalities = Modality.order(genre: :asc, oar: :asc)

        render json: @modalities
      end

      # GET /modalities/1
      def show
        render json: @modality
      end

      # POST /modalities
      def create
        @modality = Modality.new(modality_params)

        if @modality.save
          render json: {"msg": "created with success"}
        else
          render json: @modality.errors.full_messages
        end
      end

      # PATCH/PUT /modalities/1
      def update
        if @modality.update(modality_params)
          render json: {"msg": "updated with success"}
        else
          render json: @modality.errors, status: :unprocessable_entity
        end
      end

      # DELETE /modalities/1
      def destroy
        if @modality.destroy
          render json: {}, status: :no_content
        else
          render json: @modality.errors, status: :unprocessable_entity
        end
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_modality
          @modality = Modality.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def modality_params
          params.require(:modality).permit(:genre, :oar)
        end
    end

  end
end