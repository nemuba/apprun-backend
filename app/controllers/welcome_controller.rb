class WelcomeController < ApplicationController
  def index
    render json: {welcome: "Welcome AARCA API for web application app"}
  end
end
