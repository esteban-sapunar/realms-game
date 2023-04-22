class CreateBuildings < ActiveRecord::Migration[7.0]
  def change
    create_table :buildings do |t|
      t.belongs_to :hundred, null: false, foreign_key: true

      t.timestamps
    end
  end
end
