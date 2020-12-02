class CreateFamilies < ActiveRecord::Migration[6.0]
  def change
    create_table :families do |t|
      t.string :location_actual
      t.string :location_display

      t.timestamps
    end
  end
end
