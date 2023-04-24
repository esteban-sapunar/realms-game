class CreateKingdoms < ActiveRecord::Migration[7.0]
  def change
    create_table :kingdoms do |t|
      t.string :name
      t.belongs_to :world, null: false, foreign_key: true

      t.timestamps
    end
  end
end
