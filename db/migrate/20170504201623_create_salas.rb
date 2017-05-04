class CreateSalas < ActiveRecord::Migration[5.0]
  def change
    create_table :salas do |t|
      t.string :tipo
      t.string :instrumentos

      t.timestamps
    end
  end
end
