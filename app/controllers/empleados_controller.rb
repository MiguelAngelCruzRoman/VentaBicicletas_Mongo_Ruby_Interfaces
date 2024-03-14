class EmpleadosController < ApplicationController
  def index
    @empleados = Empleado.all
  end

  def new
    @empleado = Empleado.new
  end

  def create
    @empleado = Empleado.new(empleado_params)
    if @empleado.save
      redirect_to empleados_path, notice: 'Empleado creado exitosamente.'
    else
      render :new
    end
  end

  def edit
    @empleado = Empleado.find(params[:id])
  end

  def update
    @empleado = Empleado.find(params[:id])
    if @empleado.update(empleado_params)
      redirect_to empleados_path, notice: 'Empleado actualizado exitosamente.'
    else
      render :edit
    end
  end

  def destroy
    @empleado = Empleado.find(params[:id])
    @empleado.destroy
    redirect_to empleados_path, notice: 'Empleado eliminado exitosamente.'
  end

  private

  def empleado_params
    params.require(:empleado).permit(:primerNombre, :segundoNombre, :apellidoPaterno, :apellidoMaterno, :correo, :telefono, :puesto, :fechaContratacion)
  end
end
