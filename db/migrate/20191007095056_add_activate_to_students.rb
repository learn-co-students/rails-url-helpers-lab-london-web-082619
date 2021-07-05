class AddActivateToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :activate, :boolean
  end
end
