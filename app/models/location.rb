# == Schema Information
#
# Table name: locations
#
#  id            :bigint           not null, primary key
#  name          :string
#  display_order :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Location < ApplicationRecord
  has_and_belongs_to_many :companies
end
