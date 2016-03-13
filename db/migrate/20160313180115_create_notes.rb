class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.references :user, index: true, foreign_key: true
      t.references :rum, index: true, foreign_key: true
      t.references :taste, index: true, foreign_key: true
      t.integer :tastedIntensity
      t.references :smell, index: true, foreign_key: true
      t.integer :smellIntensity
      t.references :color, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
