class CreateRums < ActiveRecord::Migration
  def change
    create_table :rums do |t|
      t.string :name
      t.references :brand, index: true, foreign_key: true
      t.references :type, index: true, foreign_key: true
      t.string :blend
      t.integer :age

      t.timestamps null: false
    end
  end
end
