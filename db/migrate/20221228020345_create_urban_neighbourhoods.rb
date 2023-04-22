class CreateUrbanNeighbourhoods < ActiveRecord::Migration[7.0]
  def change
    create_table :urban_neighbourhoods do |t|
      t.string :size
      t.string :upgrades, array: true, default: []

      t.timestamps
    end
  end
end
