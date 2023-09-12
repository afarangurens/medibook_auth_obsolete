class CreateCuenta < ActiveRecord::Migration[7.0]
  def change
    create_table :cuenta do |t|
      t.string :username
      t.string :password_digest
      t.string :id_persona

      t.timestamps
    end
  end
end
