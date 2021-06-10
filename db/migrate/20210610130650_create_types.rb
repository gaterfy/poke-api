class CreateTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :types do |t|
      t.string :name
      t.text :damage_relations
      t.string :game_indices
      t.text :generation
      t.text :move_damage_class
      t.string :names
      t.references(:pokemon, index: true)
      t.string :moves

      t.timestamps
    end
  end
end
