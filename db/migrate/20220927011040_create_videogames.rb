class CreateVideogames < ActiveRecord::Migration[7.0]
  def change
    create_table :videogames do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.integer :price
      t.string :condition
      t.string :description
      t.string :platform
      t.string :status

      t.timestamps
    end
  end
end
