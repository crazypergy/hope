class RemoveTitleFromMessages < ActiveRecord::Migration[5.1]
  def change
    remove_column :messages, :title, :string
  end
end
