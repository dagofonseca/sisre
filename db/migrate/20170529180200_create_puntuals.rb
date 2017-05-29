class CreatePuntuals < ActiveRecord::Migration[5.0]
  def change
    create_table :puntuals do |t|
      t.datetime :fechaYHoraInicio
      t.datetime :fechaYHoraFin

      t.timestamps
    end
  end
end
