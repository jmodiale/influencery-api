class Api::V1::InfluencersController < ApplicationController
    def index
        @influencers= Influencer.includes(:platform, :tags, :primary_tag).all
        render json: @influencers
    end
end
