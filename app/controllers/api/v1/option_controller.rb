module Api
  module V1
    class OptionController < ApiController

      def get_modalities
        @options_modalities = Modality.all.map {|mod| {value: mod.id , label: "#{mod.genre} - #{mod.oar} remo(s)"}}
        render json: @options_modalities
      end

      def get_sponsors
        @options_sponsors = Sponsor.all.map {|spo| {value: spo.id, label: spo.name}}
        render json: @options_sponsors
      end

      def get_races
        @options_races = Race.includes(:modalities).map {|race| {races: {value: race.id, label: race.local},
        modalities: race.modalities.map {|mod| {value: mod.id, label: "#{mod.genre} - #{mod.oar}"} }}}
        render json: @options_races
      end

      def get_players
        @options_players = Player.all.map {|player| {value: player.id, label: player.name}}
        render json: @options_players
      end

    end
  end
end
