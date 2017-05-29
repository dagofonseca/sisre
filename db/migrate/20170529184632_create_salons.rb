class CreateSalons < ActiveRecord::Migration[5.0]
  def change
    create_table :salons do |t|
      t.boolean :videoBeam
      t.boolean :televisor

      t.timestamps
    end
  end
end
