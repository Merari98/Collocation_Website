class CreateLocataires < ActiveRecord::Migration[5.1]
  def change
    create_table :locataires do |t|
      t.string :name
      t.string :surname
      t.string :contact
      t.string :place
      t.string :sexe
      t.integer :age
      t.string :other
      t.integer :loyer

      t.timestamps
    end
  end
end
