class CreateRegistereds < ActiveRecord::Migration
  def change
    create_table :registereds do |t|
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end
