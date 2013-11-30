class AddMasteryToHeroes < ActiveRecord::Migration
  def change
    add_column :heroes, :mastery, :string
  end
end
