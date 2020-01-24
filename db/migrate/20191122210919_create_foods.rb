class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.references :user,          null: false, foreign_key: true
      t.text    :food,             null: false
      t.integer :carbonhydrate
      t.integer :protein
      t.integer :lipid
      t.date    :date
      t.timestamps
    end
  end
end
