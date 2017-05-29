class CreateSalaDeConferencia < ActiveRecord::Migration[5.0]
  def change
    create_table :sala_de_conferencia do |t|

      t.timestamps
    end
  end
end
