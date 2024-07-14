class AddColumnToChallenges < ActiveRecord::Migration[7.1]
  def change
    add_column :challenges, :price, :integer
  end
end
