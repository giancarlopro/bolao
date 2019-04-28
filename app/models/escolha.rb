class Escolha < ApplicationRecord
  belongs_to :participacao
  belongs_to :palpite
  belongs_to :opcao
end
