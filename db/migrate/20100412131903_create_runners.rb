class CreateRunners < ActiveRecord::Migration
  def self.up
    create_table :runners do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :runners
  end
end
