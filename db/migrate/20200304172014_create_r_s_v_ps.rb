class CreateRSVPs < ActiveRecord::Migration[5.0]
  def change
    create_table :rsvps do |t|
      t.string :user_id
      t.string :hotel_id
      t.string :start_date
      t.string :departure_date
      t.integer :budget
      t.integer :num_rooms
      t.boolean :breakfast
      t.boolean :pool
      t.boolean :gym
    end
  end
end