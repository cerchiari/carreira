class PagesController < ApplicationController

  def pag_inicial
    render 'pag_inicial'
  end

  def equipe
    render 'equipe'
  end

  def produto
    render 'produto'
  end

  def contato
    render 'contato'
  end

end
