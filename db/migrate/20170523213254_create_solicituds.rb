class CreateSolicituds < ActiveRecord::Migration[5.0]
  def change
    create_table :solicituds do |t|
      t.string :nombredelevento
      t.integer :numeroDeAsistentes
      t.text :descripcion
      t.string :estado
      t.boolean :computadores
      t.boolean :videoBeam
      t.text :comentarios
      t.date :expedicion

      t.timestamps
    end
  end
end
