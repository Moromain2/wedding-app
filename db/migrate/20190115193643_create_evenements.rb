class CreateEvenements < ActiveRecord::Migration[5.2]
  def change
    create_table :evenements do |t|
      t.string :title
      t.text :description
      t.string :adress
      t.string :city
      t.string :zipcode
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
