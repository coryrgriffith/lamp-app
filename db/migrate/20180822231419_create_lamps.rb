class CreateLamps < ActiveRecord::Migration[5.2]
  def change
    create_table :lamps do |t|
      t.string :color
      t.string :material
      t.integer :bulbs
      t.string :manufacturer

      t.timestamps
    end
  end
end
