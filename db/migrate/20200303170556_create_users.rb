class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :departure_date
      t.integer :budget
      t.integer :num_rooms
      t.boolean :breakfast
      t.boolean :pool
      t.boolean :gym
    end
  end
end