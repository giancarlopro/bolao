class CreateEscolhas < ActiveRecord::Migration[5.2]
  def change
    create_table :escolhas do |t|
      t.references :participacao, foreign_key: true
      t.references :palpite, foreign_key: true
      t.references :opcao, foreign_key: true

      t.timestamps
    end
  end
end
