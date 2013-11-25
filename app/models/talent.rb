class Talent < ActiveRecord::Base

  belongs_to :hero

end

# == Schema Information
#
# Table name: talents
#
#  id      :integer          not null, primary key
#  hero_id :integer
#  name    :string(255)
#

