# == Schema Information
#
# Table name: chambers
#
#  id               :integer          not null, primary key
#  name             :string
#  target_humidity  :integer
#  target_temp      :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  token            :string
#  current_humidity :integer
#  current_temp     :integer
#

class Chamber < ApplicationRecord
  has_secure_token

  belongs_to :user
end
