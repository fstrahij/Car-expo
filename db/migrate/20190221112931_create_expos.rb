class CreateExpos < ActiveRecord::Migration[5.1]
  def change
    create_table :expos do |t|
      t.string :name
      t.string :place
      t.datetime :date
      t.string :image_url
      t.text :description
      t.boolean :active

      t.timestamps
    end
  end
end
