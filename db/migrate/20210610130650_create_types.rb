class CreateTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :types do |t|
      t.string :name, null: false
      t.references(:pokemon, index: true)

      t.timestamps
    end
  end
end
