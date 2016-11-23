class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :string
      t.string :lastname
      t.string :username
      t.string :string
      t.string :password
      t.string :string
      t.string :favorite_player
      t.string :string

      t.timestamps
    end
  end
end
