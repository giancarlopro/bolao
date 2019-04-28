class CreateOpcoes < ActiveRecord::Migration[5.2]
  def change
    create_table :opcoes do |t|
      t.string :valor
      t.boolean :correta
      t.references :palpite, foreign_key: true

      t.timestamps
    end
  end
end
