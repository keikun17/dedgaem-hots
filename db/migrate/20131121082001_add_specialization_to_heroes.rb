class AddSpecializationToHeroes < ActiveRecord::Migration
  def change
    add_column :heroes, :specialization, :string
  end
end
