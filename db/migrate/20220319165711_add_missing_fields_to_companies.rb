# frozen_string_literal: true

class AddMissingFieldsToCompanies < ActiveRecord::Migration[7.0]
  def change
    add_column :companies, :website, :string
    add_column :companies, :location, :string
    add_column :companies, :perks, :string
    add_column :companies, :work_type, :string
  end
end
