class CreateSalaDeComputos < ActiveRecord::Migration[5.0]
  def change
    create_table :sala_de_computos do |t|
      t.boolean :videoBeam
      t.string :tipoDePc

      t.timestamps
    end
  end
end
