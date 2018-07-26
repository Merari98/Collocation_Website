class Collocation < ActiveRecord::Migration[5.1]
  def change
    create table :owners do |t|
      t.string :name
      t.string :surname
      t.string :sexe 
      t.integer :contact
      t.string :place
      t.string :Type
      t.integer :Number
      t.integer :age
      t.string :other
      t.integer :rent
      t.integer :lead
      t.integer :bail
      t.string  :comments
      end 
  end 
end
