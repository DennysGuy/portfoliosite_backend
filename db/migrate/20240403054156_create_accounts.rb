class CreateAccounts < ActiveRecord::Migration[7.1]
  def change
    create_table :accounts do |t|
      t.string :username
      t.string :password
      t.string :email
      t.string :avatar

      t.timestamps
    end
  end
end
