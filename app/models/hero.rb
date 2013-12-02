class Hero < ActiveRecord::Base

  validates :name, presence: true
  validates :universe, inclusion: { in: Universe.all }, presence: true
  validates :specialization, inclusion: { in: Specialization.all }, presence: true


  has_many :talents, dependent: :destroy
  has_many :builds, dependent: :destroy
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
#  mastery        :string(255)
#

