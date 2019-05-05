$(document).ready(function (){
  function add_opcao(e){
    template = $('#template-opcao')
    numero = $(e.target).closest('.wrapper').find('.opcoes').find('.opcao').length + 1
    $($(e.target).closest('.wrapper').find('.opcoes')[0]).append(
      template.html().split('OPCAO_ID').join(numero)
    )
    e.preventDefault(0)
  }
  function rem_opcao(e){
    $(e.target).closest('.wrapper').find('.opcoes').find('.opcao').last().remove()
    e.preventDefault()
  }
  function add_palpite(e){
    template = $('#template-palpite')
    numero = $('#palpites').find('.palpite').length + 1
    $('#palpites').append(
      template.html().split('PALPITE_ID').join(numero)
    )
    e.preventDefault();
  }
  function rem_palpite(e){
    $(e.target).closest('.palpite').remove()
    e.preventDefault()
  }
  $(document).on('click', '.add-opcao-btn', add_opcao)
  $(document).on('click', '.rem-opcao-btn', rem_opcao)
  $(document).on('click', '.add-palpite-btn', add_palpite)
  $(document).on('click', '.rem-palpite-btn', rem_palpite)
})