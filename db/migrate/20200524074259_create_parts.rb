class CreateParts < ActiveRecord::Migration[5.0]
  def change
    create_table :parts do |t|
      t.text :name,     null: false
      t.references :post,  foreign_key: true, null: false
      t.timestamps
    end
  end
end
