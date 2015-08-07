class CreateNewvolunteers < ActiveRecord::Migration
  def change
    create_table :newvolunteers do |t|
      t.string :lasname
      t.string :name
      t.string :birthdate
      t.string :ci
      t.string :address
      t.string :city
      t.string :phone
      t.string :cell
      t.string :mail
      t.string :ocupation
      t.text :free
      t.text :reason
      t.string :area

      t.timestamps null: false
    end
  end
end
