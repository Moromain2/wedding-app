class AddEmailToHebergements < ActiveRecord::Migration[5.2]
  def change
    add_column :hebergements, :email, :string
  end
end
