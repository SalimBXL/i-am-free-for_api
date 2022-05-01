class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.datetime :available_from
      t.datetime :available_to

      t.timestamps
    end
  end
end
