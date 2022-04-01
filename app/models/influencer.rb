class Influencer < ApplicationRecord
  belongs_to :platform
  has_many :influencer_tags
  has_many :tags, through: :influencer_tags
  belongs_to :primary_tag, class_name: 'Tag'
end
