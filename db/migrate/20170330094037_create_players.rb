class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :second_name
      t.integer :phone
      t.integer :mobile
      t.boolean :email_marketing

      t.timestamps null: false
    end
  end
end
