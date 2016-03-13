class AddProofRefToRum < ActiveRecord::Migration
  def change
    add_reference :rums, :proof, index: true, foreign_key: true
  end
end
