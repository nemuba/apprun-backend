module Api
  module V1
    class WelcomeController < ApiController
      def index
        render json: {welcome: "Welcome AARCA API for web application app"}
      end
    end
  end
end