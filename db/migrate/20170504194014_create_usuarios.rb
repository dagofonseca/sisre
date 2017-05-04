class CreateUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :rol
      t.string :email
      t.string :contrasena

      t.timestamps
    end
  end
end
