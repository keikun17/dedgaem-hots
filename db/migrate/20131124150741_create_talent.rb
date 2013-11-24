class CreateTalent < ActiveRecord::Migration
  def change
    create_table :talents do |t|
      t.references :hero
      t.string :name
      t.timestamp
    end

    add_index :talents, :hero_id
  end
end
