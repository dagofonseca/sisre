class AddUserIdToSolicituds < ActiveRecord::Migration[5.0]
  def change
    add_column :solicituds, :user_id, :integer
  end
end
