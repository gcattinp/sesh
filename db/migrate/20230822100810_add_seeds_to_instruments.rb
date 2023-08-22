class AddSeedsToInstruments < ActiveRecord::Migration[7.0]
  def change
    add_column :instruments, :description, :string
    add_column :instruments, :image, :string
    add_column :instruments, :available, :integer
    add_column :instruments, :price, :decimal
  end
end
