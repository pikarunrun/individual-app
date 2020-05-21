class CreateParts < ActiveRecord::Migration[5.0]
  def change
    create_table :parts do |t|
      t.text :name,     null: false
      t.integer :post_id
      t.timestamps
    end
  end
end
