class Api::V1::InfluencersController < ApplicationController
    def index
        @influencers= Influencer.includes(:platform, :tags).all
        render json: @influencers
    end

    def create
        @influencer = Influencer.new(influencer_params)

        if @influencer.save
            render json: @influencer, status: :created
        else
            render json: @influencer.errors, status: :unprocessable_entity
        end
    end

    private
    def influencer_params
        params.require(:influencer).permit(:handle, :followers, :platform_id, :profile_pic_url)
    end

end
