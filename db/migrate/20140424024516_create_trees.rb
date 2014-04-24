class CreateTrees < ActiveRecord::Migration
  def change
    create_table :trees do |t|
      t.string :species
      t.date :planted_on
    end
  end
end
