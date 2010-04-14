class CreateUnits < ActiveRecord::Migration
  def self.up
    create_table :units do |t|
      t.string :description
      t.date :date
      t.references :runner

      t.timestamps
    end
  end

  def self.down
    drop_table :units
  end
end
