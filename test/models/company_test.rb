# == Schema Information
#
# Table name: companies
#
#  id            :bigint           not null, primary key
#  name          :string
#  description   :string
#  contact_email :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  website       :string
#  location      :string
#  perks         :string
#  work_type     :string
#  is_active     :boolean          default(TRUE)
#
require "test_helper"

class CompanyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
