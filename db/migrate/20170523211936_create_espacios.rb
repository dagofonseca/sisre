class CreateEspacios < ActiveRecord::Migration[5.0]
  def change
    create_table :espacios do |t|
      t.integer :numero
      t.integer :capacidad
      t.boolean :disponibilidad

      t.timestamps
    end
  end
end
