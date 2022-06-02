class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :image_url
      t.string :location
      t.timestamps
    end
  end
end
