class HomeController < ApplicationController
  
  def index
    @boloes = Bolao.all
  end
end
