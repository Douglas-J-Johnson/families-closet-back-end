class CreateCaregivers < ActiveRecord::Migration[6.0]
  def change
    create_table :caregivers do |t|
      t.string :username
      t.string :password
      t.string :first_name
      t.string :last_name
      t.references :family, null: false, foreign_key: true

      t.timestamps
    end
  end
end
