module Api
  module V1
    class PlayersController < ApiController
    before_action :authenticate_user
    before_action :set_player, only: [:show, :update, :destroy]

    # GET /players
    def index
      @players = Player.includes(:registrations, :races).order(name: :asc)

      render json: @players
    end

    # GET /players/1
    def show
      render json: @player,  include: ['races','registrations']
    end

    # POST /players
    def create
      @player = Player.new(player_params)

      if @player.save
        render json: @player, status: :created
      else
        render json: @player.errors.full_messages, status: :non_authoritative_information
      end
    end

    # PATCH/PUT /players/1
    def update
      if @player.update(player_params)
        render json: @player
      else
        render json: @player.full_messages, status: :non_authoritative_information
      end
    end

    # DELETE /players/1
    def destroy
      if @player.destroy
        render json: {msg: 'deleted with success'}
      else
        render json: @player.errors.full_messages, status: :non_authoritative_information
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_player
        @player = Player.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def player_params
        params.require(:player).permit(:name, :genre, :age)
      end
  end

  end
end