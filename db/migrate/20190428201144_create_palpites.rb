class CreatePalpites < ActiveRecord::Migration[5.2]
  def change
    create_table :palpites do |t|
      t.references :bolao, foreign_key: true
      t.string :pergunta
      t.string :tipo

      t.timestamps
    end
  end
end
