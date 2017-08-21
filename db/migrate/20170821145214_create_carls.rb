class CreateCarls < ActiveRecord::Migration[5.1]
  def change
    create_table :carls do |t|
      t.integer :precio
      t.integer :cantidad
      t.integer :peso
      t.string :tamaño

      t.timestamps
    end
  end
end
