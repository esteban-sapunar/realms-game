class CreateManors < ActiveRecord::Migration[7.0]
  def change
    create_table :manors do |t|
      t.string :name
      t.belongs_to :shire, null: false, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.belongs_to :world, null: false, foreign_key: true

      t.timestamps
    end
  end
end
