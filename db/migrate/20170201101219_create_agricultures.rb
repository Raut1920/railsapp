class CreateAgricultures < ActiveRecord::Migration
  def change
    create_table :agricultures do |t|
      t.string :name
      t.string :description
      t.string :varieties
      t.string :climate
      t.string :soil
      t.string :seedrate
      t.string :season
      t.string :fertilizer
      t.string :diseases

      t.timestamps null: false
    end
  end
end
