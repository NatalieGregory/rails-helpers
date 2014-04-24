class CreateDivas < ActiveRecord::Migration
  def change
    create_table :divas do |t|
      t.string :stage_name
      t.string :high_note
      t.boolean :still_singing
    end
  end
end
