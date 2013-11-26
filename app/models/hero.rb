class Hero < ActiveRecord::Base

  validates :name, presence: true
  validates :universe, inclusion: { in: Universe.all }, presence: true

  has_many :talents
  has_many :builds
end

# == Schema Information
#
# Table name: heroes
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  universe       :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#  base_life      :float
#  attack         :float
#  abilities      :float
#  speed          :float
#  specialization :string(255)
#

