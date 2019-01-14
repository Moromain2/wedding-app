class CreateHebergements < ActiveRecord::Migration[5.2]
  def change
    create_table :hebergements do |t|
      t.string :title
      t.text :description
      t.string :adress
      t.string :city
      t.string :zipcode
      t.string :phonenumber
      t.string :website

      t.timestamps
    end
  end
end
