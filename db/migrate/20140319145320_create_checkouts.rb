class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.integer :book_id, null: false
      t.string :borrower, null: false


      t.timestamps
    end
    add_index :checkouts, :book_id
  end
end
