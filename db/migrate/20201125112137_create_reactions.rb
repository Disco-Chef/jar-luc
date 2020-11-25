class CreateReactions < ActiveRecord::Migration[6.0]
  def change
    create_table :reactions do |t|
      t.string :emoji
      t.references :palmy, null: false, foreign_key: true

      t.timestamps
    end
  end
end
