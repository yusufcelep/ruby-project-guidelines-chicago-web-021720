class CreateHotels < ActiveRecord::Migration[5.0]
  def change
    create_table :hotels do |t|
      t.string :website
      t.string :phone
      t.integer :zip
      t.string :address
      t.integer :num_rooms
      t.string :name
    end
  end
end
