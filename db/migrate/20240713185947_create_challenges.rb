class CreateChallenges < ActiveRecord::Migration[7.1]
  def change
    create_table :challenges do |t|
      t.string :title
      t.integer :points

      t.timestamps
    end
  end
end
