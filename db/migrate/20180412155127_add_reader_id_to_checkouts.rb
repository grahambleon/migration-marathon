class AddReaderIdToCheckouts < ActiveRecord::Migration
  def up
    add_column :checkouts, :reader_id, :integer
    remove_column :checkouts, :patron
  end
  def down
    remove_column :checkouts, :reader_id
    add_column :checkouts, :patron, :string
  end
end
