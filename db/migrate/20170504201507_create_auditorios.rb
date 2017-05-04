class CreateAuditorios < ActiveRecord::Migration[5.0]
  def change
    create_table :auditorios do |t|
      t.boolean :amplificacion
      t.boolean :proyector

      t.timestamps
    end
  end
end
