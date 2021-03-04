class CreateChildren < ActiveRecord::Migration[6.0]
  def change
    create_table :children do |t|
      t.string :first_name
      t.string :birthdate
      t.boolean :give
      t.string :give_gender_preference
      t.boolean :receive 
      t.string :receive_gender_preference
      t.references :family, null: false, foreign_key: true

      t.timestamps
    end
  end
end
