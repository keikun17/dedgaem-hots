class CreateBuildsTable < ActiveRecord::Migration
  def change
    create_table :builds do |t|
      t.string :title
      t.text :summary
      t.text :body
      t.references :hero
      t.timestamps
    end

    add_index :builds, :hero_id
  end
end
