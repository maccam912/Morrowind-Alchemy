class CreateEffects < ActiveRecord::Migration
  def self.up
    create_table :effects do |t|
      t.string :effect

      t.timestamps
    end
  end

  def self.down
    drop_table :effects
  end
end
