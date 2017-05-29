class CreateAuditorios < ActiveRecord::Migration[5.0]
  def change
    create_table :auditorios do |t|
      t.boolean :videoBeam
      t.boolean :atril

      t.timestamps
    end
  end
end
