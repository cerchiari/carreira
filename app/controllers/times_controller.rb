class TimesController < ApplicationController

  def index
    @times = Time.all
  end

  def show
    @time = Time.find_by(id: params[:id])
  end

  def new
  end

  def create
    @time = Time.new
    @time.nome = params[:nome]
    @time.resume = params[:resume]
    @time.funcao = params[:funcao]

    if @time.save
      redirect_to times_url, notice: "Time created successfully."
    else
      render 'new'
    end
  end

  def edit
    @time = Time.find_by(id: params[:id])
  end

  def update
    @time = Time.find_by(id: params[:id])
    @time.nome = params[:nome]
    @time.resume = params[:resume]
    @time.funcao = params[:funcao]

    if @time.save
      redirect_to times_url, notice: "Time updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @time = Time.find_by(id: params[:id])
    @time.destroy

    redirect_to times_url, notice: "Time deleted."
  end
end
