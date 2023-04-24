class CreateHundreds < ActiveRecord::Migration[7.0]
  def change
    create_table :hundreds do |t|
      t.string :hundred_type
      t.integer :position, array: true, default: [0,0]
      t.belongs_to :manor, null: false, foreign_key: true
      t.belongs_to :world, null: false, foreign_key: true

      t.timestamps
    end
  end
end
