class CreateIngredients < ActiveRecord::Migration
  def self.up
    create_table :ingredients do |t|
      t.string :ingredient
      t.string :effect1
      t.string :effect2
      t.string :effect3
      t.string :effect4

      t.timestamps
    end
  end

  def self.down
    drop_table :ingredients
  end
end
