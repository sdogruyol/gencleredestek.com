class CreateJoinTableCompaniesWorkPositions < ActiveRecord::Migration[7.0]
  def change
    create_join_table :companies, :work_positions do |t|
      t.index [:company_id, :work_position_id], name: 'index_company_work_position_id'
      t.index [:work_position_id, :company_id], name: 'index_work_position_company_id'
    end
  end
end
