class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :uid, unique: true
      t.string :name, null: false
      t.integer :status, default: 1, null: false
      t.string :event_image
      t.text :detail
      t.datetime :start_time, null: false
      t.datetime :end_time, null: false
      t.integer :event_info_id
      t.timestamps
    end
  end
end
