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

require 'test_helper'

class ChamberTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
