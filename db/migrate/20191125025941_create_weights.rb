class CreateWeights < ActiveRecord::Migration[5.2]
  def change
    create_table :weights do |t|
      t.references :user,           null: false, foreign_key: true
      t.integer :weight
      t.timestamps
    end
  end
end
