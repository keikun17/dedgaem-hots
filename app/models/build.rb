class Build < ActiveRecord::Base
  belongs_to :hero
  validates :hero_id, presence: true
end
