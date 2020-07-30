class CreateSeries < ActiveRecord::Migration[6.0]
  def change
    create_table :series do |t|
      t.string :name
      t.text :description
      t.string :picture
      t.float :rating

      t.timestamps
    end
  end
end
