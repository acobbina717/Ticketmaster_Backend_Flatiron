class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.integer :user_id
      t.integer :event_id
      t.integer :ticket_price
      t.boolean :paid
      t.string :date
    end
  end
end
