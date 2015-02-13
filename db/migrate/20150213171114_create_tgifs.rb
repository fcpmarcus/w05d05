class CreateTgifs < ActiveRecord::Migration
  def change
    create_table :tgifs do |t|
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end
