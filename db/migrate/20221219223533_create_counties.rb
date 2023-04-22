class CreateCounties < ActiveRecord::Migration[7.0]
  def change
    create_table :counties do |t|
      t.string :name
      t.belongs_to :duchy, null: false, foreign_key: true

      t.timestamps
    end
  end
end
