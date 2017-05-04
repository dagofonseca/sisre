class CreateSalons < ActiveRecord::Migration[5.0]
  def change
    create_table :salons do |t|
      t.boolean :computadores
      t.boolean :proyecto

      t.timestamps
    end
  end
end
