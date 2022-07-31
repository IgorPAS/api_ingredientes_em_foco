class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :cpfCnpj, null: false
      t.string :email, null: false, index: { unique: true, name: 'unique_emails' }
      t.string :password, null: false
      t.date :birthDate, null: false
      t.binary :typeUser, default: 0

      t.timestamps
    end
  end
end
