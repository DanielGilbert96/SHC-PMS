class EditPatient2 < ActiveRecord::Migration[5.1]
  def change
    remove_column :patients, :name
    add_column :patients, :first_name, :string
    add_column :patients, :second_name, :string
    remove_column :patients, :address
    add_column :patients, :address1, :string
    add_column :patients, :address2, :string
  end
end
