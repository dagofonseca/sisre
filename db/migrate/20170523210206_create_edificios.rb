class CreateEdificios < ActiveRecord::Migration[5.0]
  def change
    create_table :edificios do |t|
      t.string :nombre
      t.integer :identificador
      t.integer :numeroDeBanos

      t.timestamps
    end
  end
end
