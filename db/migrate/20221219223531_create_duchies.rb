class CreateDuchies < ActiveRecord::Migration[7.0]
  def change
    create_table :duchies do |t|
      t.string :name
      t.belongs_to :kingdom, null: false, foreign_key: true

      t.timestamps
    end
  end
end
