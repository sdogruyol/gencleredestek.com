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
class Company < ApplicationRecord
  include PgSearch::Model

  scope :active, -> { where is_active: true }
  scope :inactive, -> { where is_active: false }

  has_and_belongs_to_many :work_types
  has_and_belongs_to_many :work_positions
  has_and_belongs_to_many :locations

  accepts_nested_attributes_for :work_types, allow_destroy: true
  accepts_nested_attributes_for :work_positions, allow_destroy: true
  accepts_nested_attributes_for :locations, allow_destroy: true

  pg_search_scope :search_companies,
                  against: %i[name description contact_email website],
                  associated_against: {
                    locations: [:name],
                    work_positions: [:name],
                    work_types: [:name]
                  },
                  using: {
                    tsearch: { prefix: true } # Allows partial matching
                  }
  
  # Support pagination for pg_search results
  self.per_page = 30 # Set default per-page value for pagination

  def self.ransackable_attributes(auth_object = nil)
    %w[id name description contact_email website location perks work_type]
  end

  def self.ransackable_associations(auth_object = nil)
    ["locations", "work_positions", "work_types"]
  end
end
