class AddValuesToDrinks < ActiveRecord::Migration[5.1]
  def change
    add_column :drinks, :alcohol_level, :integer
    add_column :drinks, :distilled, :boolean
    add_column :drinks, :temperature, :integer
    add_column :drinks, :base_ingredient, :string
    add_column :drinks, :origin, :string
    add_column :drinks, :ibu, :integer
    add_column :drinks, :drinkware, :string
    add_column :drinks, :rating_avg, :decimal
  end
end
