class AddClinicToRecords < ActiveRecord::Migration[5.1]
  def change
    add_column :records, :clinic, :string
  end
end
