class AddTelephoneNymberToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :telephone_nymber, :string
  end
end
