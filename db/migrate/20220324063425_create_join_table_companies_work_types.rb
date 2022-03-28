# frozen_string_literal: true

class CreateJoinTableCompaniesWorkTypes < ActiveRecord::Migration[7.0]
  def change
    create_join_table :companies, :work_types do |t|
      t.index [:company_id, :work_type_id]
      t.index [:work_type_id, :company_id]
    end
  end
end
