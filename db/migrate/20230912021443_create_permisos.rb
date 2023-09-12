class CreatePermisos < ActiveRecord::Migration[7.0]
  def change
    create_table :permisos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
