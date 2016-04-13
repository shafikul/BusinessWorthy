class CreateSubscribes < ActiveRecord::Migration
  def change
    create_table :subscribes do |t|
      t.string :name
      t.string :email
      t.string :country
      t.string :company
      t.string :turnover
      t.integer :no_employees

      t.timestamps null: false
    end
  end
end
