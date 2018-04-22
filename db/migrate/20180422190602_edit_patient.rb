class EditPatient < ActiveRecord::Migration[5.1]
  def change
    change_column :patients, :phone_no, :bigint
  end
end
