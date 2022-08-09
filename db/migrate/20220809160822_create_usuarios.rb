class CreateUsuarios < ActiveRecord::Migration[7.0]
  def change
    create_table :usuarios do |t|
      t.string :username
      t.string :email
      t.string :matricula
      t.string :cpf
      t.boolean :active

      t.timestamps
    end
  end
end
