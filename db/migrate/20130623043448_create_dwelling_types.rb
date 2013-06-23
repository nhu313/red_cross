class CreateDwellingTypes < ActiveRecord::Migration
  def change
    create_table :dwelling_types do |t|
      t.string :name
      t.string :story

      t.timestamps
    end
  end
end
