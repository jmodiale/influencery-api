class InfluencerSerializer < ActiveModel::Serializer
  attributes :id, :handle, :platform, :followers, :profile_pic_url, :tags

end
