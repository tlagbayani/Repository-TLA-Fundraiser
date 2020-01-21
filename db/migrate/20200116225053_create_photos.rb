class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.text :caption
      t.integer :user_id
      t.integer :event_id
      t.timestamps
    end
    add_index :photos, [:user_id, :event_id]
    add_index :photos, :event_id
  end
end
