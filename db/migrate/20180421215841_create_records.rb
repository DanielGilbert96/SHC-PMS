class CreateRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :records do |t|
      t.string :injury
      t.string :infection
      t.string :observation
      t.belongs_to :patient, index: true

      t.timestamps
    end
  end
end
