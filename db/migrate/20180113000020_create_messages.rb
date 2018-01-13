class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.datetime :date
      t.string :title
      t.string :link

      t.timestamps
    end
  end
end
