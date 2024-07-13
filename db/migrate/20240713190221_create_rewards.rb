class CreateRewards < ActiveRecord::Migration[7.1]
  def change
    create_table :rewards do |t|
      t.string :title
      t.integer :points

      t.timestamps
    end
  end
end
