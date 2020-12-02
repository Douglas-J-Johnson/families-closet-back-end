class CreateChildren < ActiveRecord::Migration[6.0]
  def change
    create_table :children do |t|
      t.string :first_name
      t.string :gender
      t.string :birthdate
      t.references :family, null: false, foreign_key: true

      t.timestamps
    end
  end
end
