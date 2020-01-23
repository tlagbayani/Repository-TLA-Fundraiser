class CreateGuests < ActiveRecord::Migration[5.2]
  def change
    create_table :guests do |t|
      t.string  :first_name 
      t.string  :last_name
      t.integer :number_of_guest 
      t.decimal :amount_due
      t.integer :user_id
      t.integer :event_id
      t.string  :status
      t.timestamps
    end
    add_index :guests, [:user_id, :event_id]
    add_index :guests, [:event_id]
  end
end
