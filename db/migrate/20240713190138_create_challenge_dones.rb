class CreateChallengeDones < ActiveRecord::Migration[7.1]
  def change
    create_table :challenge_dones do |t|
      t.references :user, null: false, foreign_key: true
      t.references :challenge, null: false, foreign_key: true

      t.timestamps
    end
  end
end
