class ComprasController < ApplicationController

  def index
    @compras = Compra.all
  end

  def show
    @compra = Compra.find_by(id: params[:id])
  end

  def new
  end

  def create
    @compra = Compra.new
    @compra.user_id = params[:user_id]
    @compra.item_id = params[:item_id]
    @compra.status = params[:status]
    @compra.data = params[:data]
    @compra.quantidade = params[:quantidade]

    if @compra.save
      redirect_to compras_url, notice: "Compra created successfully."
    else
      render 'new'
    end
  end

  def edit
    @compra = Compra.find_by(id: params[:id])
  end

  def update
    @compra = Compra.find_by(id: params[:id])
    @compra.user_id = params[:user_id]
    @compra.item_id = params[:item_id]
    @compra.status = params[:status]
    @compra.data = params[:data]
    @compra.quantidade = params[:quantidade]

    if @compra.save
      redirect_to compras_url, notice: "Compra updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @compra = Compra.find_by(id: params[:id])
    @compra.destroy

    redirect_to compras_url, notice: "Compra deleted."
  end
end
