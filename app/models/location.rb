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

  def self.ransackable_attributes(auth_object = nil)
    ["id", "name"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["companies"]
  end
end
