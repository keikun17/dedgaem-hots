class Talent < ActiveRecord::Base

  belongs_to :hero
  validates :hero_id, presence: true

end

# == Schema Information
#
# Table name: talents
#
#  id      :integer          not null, primary key
#  hero_id :integer
#  name    :string(255)
#

