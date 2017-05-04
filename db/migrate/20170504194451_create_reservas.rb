class CreateReservas < ActiveRecord::Migration[5.0]
  def change
    create_table :reservas do |t|
      t.integer :identificador
      t.integer :numUsu
      t.datetime :fecha

      t.timestamps
    end
  end
end
