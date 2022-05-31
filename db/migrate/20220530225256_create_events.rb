class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table do |t|
      t.string :event_name
      t.string :image_url
      t.string :location
      t.integer :start_time
      t.integer :end_time
      t.integer :tickets
      t.integer :rating
    end
  end
end
