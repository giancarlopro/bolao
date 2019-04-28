class CreateBoloes < ActiveRecord::Migration[5.2]
  def change
    create_table :boloes do |t|
      t.string :nome
      t.boolean :ativo, default: true

      t.timestamps
    end
  end
end
