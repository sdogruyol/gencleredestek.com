# frozen_string_literal: true

class WorkType < ApplicationRecord
  has_and_belongs_to_many :companies
end
