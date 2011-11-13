class CreateUserrs < ActiveRecord::Migration
  def change
    create_table :userrs do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
