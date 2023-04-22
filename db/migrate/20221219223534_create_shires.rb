class CreateShires < ActiveRecord::Migration[7.0]
  def change
    create_table :shires do |t|
      t.string :name
      t.belongs_to :county, null: false, foreign_key: true

      t.timestamps
    end
  end
end
