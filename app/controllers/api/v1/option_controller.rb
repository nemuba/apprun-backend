module Api
  module V1
    class OptionController < ApiController
      before_action :authenticate_user
      before_action :set_race, only: [:get_race_modalities]

      def get_modalities
        @options_modalities = Modality.order(genre: :asc, oar: :asc).map {|mod| {value: mod.id , label: "#{mod.genre} - #{mod.oar} remo(s)"}}
        render json: @options_modalities
      end

      def get_race_modalities
        @options = @race.modalities.order(genre: :asc, oar: :asc).map {|mod| {label: "#{mod.genre} - #{mod.oar} remo(s)", value: mod.id}}
        render json: @options
      end

      def get_sponsors
        @options_sponsors = Sponsor.order(name: :asc).map {|spo| {value: spo.id, label: spo.name}}
        render json: @options_sponsors
      end

      def get_races
        @options_races = Race.order(local: :asc, date_race: :desc).map {|race| {value: race.id, label: race.local}}
        render json: @options_races
      end

      def get_players
        @options_players = Player.order(name: :asc).map {|player| {value: player.id, label: player.name}}
        render json: @options_players
      end

      def get_positions
        @options_positions = Position.order(description: :asc).map {|position| {value: position.id, label: position.description}}
        render json: @options_positions
      end

      def get_total
        @total_races = Race.count
        @total_registrations = Registration.count
        @total_players = Player.count

        render json: {total_race: @total_races, total_registrations: @total_registrations, total_players: @total_players}
      end

      private
      def set_race
        @race = Race.find(params[:id])
      end
    end
  end
end
