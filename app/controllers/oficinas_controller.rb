class OficinasController < ApplicationController

  def index
    @oficinas = Oficina.all
  end

  def show
    @oficina = Oficina.find_by(id: params[:id])
  end

  def new
  end

  def create
    @oficina = Oficina.new
    @oficina.categoria = params[:categoria]
    @oficina.item = params[:item]
    @oficina.resumo = params[:resumo]
    @oficina.publicoalvo = params[:publicoalvo]
    @oficina.descricao = params[:descricao]
    @oficina.aprendizagem = params[:aprendizagem]
    @oficina.duracao = params[:duracao]
    @oficina.preco = params[:preco]

    if @oficina.save
      redirect_to oficinas_url, notice: "Oficina created successfully."
    else
      render 'new'
    end
  end

  def edit
    @oficina = Oficina.find_by(id: params[:id])
  end

  def update
    @oficina = Oficina.find_by(id: params[:id])
    @oficina.categoria = params[:categoria]
    @oficina.item = params[:item]
    @oficina.resumo = params[:resumo]
    @oficina.publicoalvo = params[:publicoalvo]
    @oficina.descricao = params[:descricao]
    @oficina.aprendizagem = params[:aprendizagem]
    @oficina.duracao = params[:duracao]
    @oficina.preco = params[:preco]

    if @oficina.save
      redirect_to oficinas_url, notice: "Oficina updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @oficina = Oficina.find_by(id: params[:id])
    @oficina.destroy

    redirect_to oficinas_url, notice: "Oficina deleted."
  end
end
