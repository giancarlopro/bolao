class Palpite < ApplicationRecord
  alias_attribute :opcoes, :opcao

  belongs_to :bolao
  has_many :opcao

  def self.clear(bolao_id)
    palpites = Palpite.where(bolao_id: bolao_id)
    palpites.each do |palpite|
      opcoes = Opcao.where(palpite_id: palpite.id)
      opcoes.each do |opcao|
        opcao.destroy
      end
      palpite.destroy
    end
  end
end
