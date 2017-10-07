class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.integer :user_id
      t.integer :dog_id
      t.integer :amount

      t.timestamps
    end
  end
end
