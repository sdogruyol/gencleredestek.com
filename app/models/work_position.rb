# == Schema Information
#
# Table name: work_positions
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class WorkPosition < ApplicationRecord
  has_and_belongs_to_many :companies

  def self.ransackable_attributes(auth_object = nil)
    [ "id", "name"]
  end
end
