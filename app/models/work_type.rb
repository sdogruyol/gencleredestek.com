# == Schema Information
#
# Table name: work_types
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class WorkType < ApplicationRecord
  has_and_belongs_to_many :companies
end
