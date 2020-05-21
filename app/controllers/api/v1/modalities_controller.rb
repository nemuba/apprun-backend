module Api
  module V1
    class ModalitiesController < ApiController
      before_action :authenticate_user
      before_action :set_modality, only: [:show, :update, :destroy]

      # GET /modalities
      def index

        if param[:filter_genre]
          @modalities = Modality.order(genre: :asc, oar: :asc).where(genre: param[:filter_genre])
        elsif params[:filter_oar]
          @modalities = Modality.order(genre: :asc, oar: :asc).where(oar: param[:filter_oar])
        else
          @modalities = Modality.order(genre: :asc, oar: :asc)
        end

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
          render json: @modality, status: :created
        else
          render json: @modality.errors.full_messages, status: :non_authoritative_information
        end
      end

      # PATCH/PUT /modalities/1
      def update
        if @modality.update(modality_params)
          render json: @modality
        else
          render json: @modality.errors.full_messages, status: :non_authoritative_information
        end
      end

      # DELETE /modalities/1
      def destroy
        if @modality.destroy
          render json: {msg: 'Delete with success'}
        else
          render json: @modality.errors.full_messages, status: :non_authoritative_information
        end
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_modality
          @modality = Modality.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def modality_params
          params.require(:modality).permit(:genre, :oar, :filter_genre, :filter_oar)
        end
    end

  end
end