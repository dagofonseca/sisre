class CreatePermanentes < ActiveRecord::Migration[5.0]
  def change
    create_table :permanentes do |t|
      t.integer :numeroDeVecesEvento
      t.date :fechaInicio
      t.date :fechaFin

      t.timestamps
    end
  end
end
