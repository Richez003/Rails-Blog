class CreateUser < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :Name
      t.text :bio
      t.string :photo
      t.integer :post_counter

      t.timestamps
    end
  end
end
