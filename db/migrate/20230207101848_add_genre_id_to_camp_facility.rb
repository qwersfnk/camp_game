class AddGenreIdToCampFacility < ActiveRecord::Migration[6.1]
  def change
    add_column :camp_facilities, :genre_id, :integer
  end
end
