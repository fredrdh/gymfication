class CreateRewardGivens < ActiveRecord::Migration[7.1]
  def change
    create_table :reward_givens do |t|
      t.references :user, null: false, foreign_key: true
      t.references :reward, null: false, foreign_key: true

      t.timestamps
    end
  end
end
