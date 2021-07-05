class RemoveActivateFromColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :students, :activate, :boolean
  end
end
