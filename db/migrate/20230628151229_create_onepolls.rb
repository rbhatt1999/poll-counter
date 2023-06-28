class CreateOnepolls < ActiveRecord::Migration[7.0]
  def change
    create_table :onepolls do |t|
      t.string :email
      t.string :answer

      t.timestamps
    end
  end
end
