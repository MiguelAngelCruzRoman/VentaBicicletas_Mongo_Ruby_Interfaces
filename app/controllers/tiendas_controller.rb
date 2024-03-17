class TiendasController < ApplicationController
    before_action :set_tienda, only: [:show, :edit, :update, :destroy]
  
    def index
      @tiendas = Tienda.all
    end
  
    def show
    end
  
    def new
      @tienda = Tienda.new
      @tienda.build_direccion
    end
  
    def create
      @tienda = Tienda.new(tienda_params)
      if @tienda.save
        redirect_to tiendas_path, notice: 'Tienda creada exitosamente.'
      else
        render :new
      end
    end
  
    def edit
    end
  
    def update
      if @tienda.update(tienda_params)
        redirect_to tiendas_path, notice: 'Tienda actualizada exitosamente.'
      else
        render :edit
      end
    end
  
    def destroy
      @tienda.destroy
      redirect_to tiendas_path, notice: 'Tienda eliminada exitosamente.'
    end
  
    private
  
    def set_tienda
      @tienda = Tienda.find(params[:id])
    end
  
    def tienda_params
      params.require(:tienda).permit(:nombre, :telefono, :horario, direccion_attributes: [:id, :calle, :ciudad, :estado, :pais, :codigo_postal, :colonia, :numero])
    end
  end
  