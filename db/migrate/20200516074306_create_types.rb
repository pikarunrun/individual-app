class CreateTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :types do |t|
      t.text :name,            null: true
      t.timestamps
    end
  end
end
