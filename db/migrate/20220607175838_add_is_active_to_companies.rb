class AddIsActiveToCompanies < ActiveRecord::Migration[7.0]
  def change
    add_column :companies, :is_active, :boolean, default: true
  end
end
