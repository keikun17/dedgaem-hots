class Build < ActiveRecord::Base
  belongs_to :hero
  validates :hero_id, presence: true
end

# == Schema Information
#
# Table name: builds
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  summary    :text
#  body       :text
#  hero_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

