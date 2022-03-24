class Company < ApplicationRecord
  has_and_belongs_to_many :work_types

  accepts_nested_attributes_for :work_types, allow_destroy: true
end
