class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.datetime :start_date
      t.integer :budget
      t.integer :peeps
    end
  end
end
