class CreateListeDeMariages < ActiveRecord::Migration[5.2]
  def change
    create_table :liste_de_mariages do |t|

      t.timestamps
    end
  end
end
