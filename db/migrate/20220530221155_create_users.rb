class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table do |t|
      t.string :name
      t.string :email
      t.string :username
      t.string :password
      t.string :dob
      # t.integer :age
      t.timestamps
      
    end
  end
end
