class CreateLugars < ActiveRecord::Migration[5.0]
  def change
    create_table :lugars do |t|
      t.integer :identificador
      t.integer :capacidad
      t.boolean :estado

      t.timestamps
    end
  end
end
