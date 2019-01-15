class AddFieldsToListeDeMariages < ActiveRecord::Migration[5.2]
  def change
    add_column :liste_de_mariages, :title, :string
    add_column :liste_de_mariages, :link, :string
    add_column :liste_de_mariages, :description, :text
  end
end
