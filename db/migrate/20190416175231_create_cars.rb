class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :title
      t.text :description
      t.text :owner
      t.string :price

      t.timestamps
    end
  end
end
