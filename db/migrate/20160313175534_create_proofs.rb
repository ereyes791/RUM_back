class CreateProofs < ActiveRecord::Migration
  def change
    create_table :proofs do |t|
      t.integer :adv
      t.integer :proof

      t.timestamps null: false
    end
  end
end
