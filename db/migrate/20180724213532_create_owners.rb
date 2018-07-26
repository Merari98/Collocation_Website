class CreateOwners < ActiveRecord::Migration[5.1]
  def change
    create_table :owners do |t|
      t.string :name
      t.string :surname
      t.string :sexe 
      t.integer :contact
      t.string :place
      t.string :owner_type
      t.integer :number
      t.integer :age
      t.string :other
      t.integer :rent
      t.integer :lead
      t.integer :bail
      t.string  :comments
      t.timestamps
    end
  end
end
