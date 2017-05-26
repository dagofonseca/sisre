class CreateAdministradors < ActiveRecord::Migration[5.0]
  def change
    create_table :administradors do |t|
      t.string :nombre
      t.string :correo
      t.string :clave

      t.timestamps
    end
  end
end
