class CreateCampTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :camp_types do |t|
      t.integer :count

      t.timestamps
    end
  end
end
