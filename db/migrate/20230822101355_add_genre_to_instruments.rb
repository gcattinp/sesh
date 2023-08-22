class AddGenreToInstruments < ActiveRecord::Migration[7.0]
  def change
    add_column :instruments, :genre, :string
  end
end
