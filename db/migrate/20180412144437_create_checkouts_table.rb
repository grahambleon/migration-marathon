class CreateCheckoutsTable < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.belongs_to :book, null: false
      #t.integer :book_id is alternative
      t.string :patron, null: false
      t.boolean :status, null: false, default: false
      t.timestamps null: false
    end
  end
end
