class CreateBienestars < ActiveRecord::Migration[5.0]
  def change
    create_table :bienestars do |t|
      t.string :correo
      t.string :contrasena
      t.string :identificador

      t.timestamps
    end
  end
end
