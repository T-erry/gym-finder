class CreateGyms < ActiveRecord::Migration[7.0]
  def change
    create_table :gyms do |t|
      t.string :image
      t.string :name
      t.string :location
      t.string :operating_hours
      t.integer :price
      t.belongs_to :admin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
