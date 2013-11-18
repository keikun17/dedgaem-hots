class AddStatsToHeroes < ActiveRecord::Migration
  def change
    add_column :heroes, :base_life, :float
    add_column :heroes, :attack, :float
    add_column :heroes, :abilities, :float
    add_column :heroes, :speed, :float
  end
end
