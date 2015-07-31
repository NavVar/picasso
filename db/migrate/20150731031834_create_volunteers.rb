class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.string :name
      t.string :ocupation
      t.text :experience

      t.timestamps null: false
    end
  end
end
