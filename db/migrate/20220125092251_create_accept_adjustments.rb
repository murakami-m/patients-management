class CreateAcceptAdjustments < ActiveRecord::Migration[6.0]
  def change
    create_table :accept_adjustments do |t|
      t.date       :accept_expected_date, null: false
      t.references :patient,              null: false, foreign_key: true
      t.timestamps
    end
  end
end
