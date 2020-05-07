module Api
  module V1
    class SponsorsController < ApiController
    before_action :set_sponsor, only: [:show, :update, :destroy]

    # GET /api/v1/sponsors
    def index
      @sponsors = Sponsor.all.order(name: :asc)

      render json: @sponsors
    end

    # GET /api/v1/sponsors/1
    def show
      render json: @sponsor
    end

    # POST /api/v1/sponsors
    def create
      @sponsor = Sponsor.new(sponsor_params)

      if @sponsor.save
        render json: {msg: "Created with success !"}, status: :created
      else
        render json: @sponsor.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /api/v1/sponsors/1
    def update
      if @sponsor.update(sponsor_params)
        render json: {msg: "Updated with success !"}
      else
        render json: @sponsor.errors, status: :unprocessable_entity
      end
    end

    # DELETE /api/v1/sponsors/1
    def destroy
     if  @sponsor.destroy
      render json: {msg: "Excluded with success!"} , status: :no_content
     else
      render json: {} , status: :no_content
     end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_sponsor
        @sponsor =Sponsor.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def sponsor_params
        params.require(:sponsor).permit(:name, :telephone)
      end
  end

  end
end