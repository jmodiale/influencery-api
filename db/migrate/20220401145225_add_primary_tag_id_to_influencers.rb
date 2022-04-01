class AddPrimaryTagIdToInfluencers < ActiveRecord::Migration[6.0]
  def change
    add_column :influencers, :primary_tag_id, :integer
  end
end
