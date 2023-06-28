class CreateTwopolls < ActiveRecord::Migration[7.0]
  def change
    create_table :twopolls do |t|
      t.string :email
      t.string :answer

      t.timestamps
    end
  end
end
