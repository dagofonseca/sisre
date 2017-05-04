class CreateEdificios < ActiveRecord::Migration[5.0]
  def change
    create_table :edificios do |t|
      t.string :monbre
      t.integer :identificador

      t.timestamps
    end
  end
end
