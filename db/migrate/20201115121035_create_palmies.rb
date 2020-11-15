class CreatePalmies < ActiveRecord::Migration[6.0]
  def change
    create_table :palmies do |t|
      t.string :description
      t.string :author

      t.timestamps
    end
  end
end
