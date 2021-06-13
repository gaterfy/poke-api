# frozen_string_literal: true

class CreatePokemons < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemons do |t|
      t.string :name, null: false, index: { unique: true }
      t.integer :base_experience
      t.integer :height
      t.boolean :is_default
      t.integer :order
      t.integer :weight
      t.text :abilities
      t.text :forms
      t.text :game_indices
      t.string :location_area_encounters
      t.text :held_items
      t.string :moves

      t.timestamps
    end
  end
end
