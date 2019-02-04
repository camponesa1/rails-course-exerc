class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.text :description
      t.references :owner, foreign_key: true

      t.timestamps
    end
  end
end
