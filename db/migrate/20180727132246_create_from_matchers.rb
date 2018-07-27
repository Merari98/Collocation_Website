class CreateFromMatchers < ActiveRecord::Migration[5.1]
  def change
    create_table :from_matchers do |t|
      t.integer :owner_id
      t.integer :locataires_id

      t.timestamps
    end
  end
end
