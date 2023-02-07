class CreateCampFacilities < ActiveRecord::Migration[6.1]
  def change
    create_table :camp_facilities do |t|
      t.text :it_was_fun
      t.text :notes
      t.string :spot
      t.string :manners
      t.timestamps
    end
  end
end
