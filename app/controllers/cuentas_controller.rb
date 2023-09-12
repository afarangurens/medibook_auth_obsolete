class CuentasController < ApplicationController
    
    def index
      @cuentas = Cuentum.all
      render json: @cuentas
    end
  
    def new
      @cuenta = Cuentum.new
    end
  
    def create
      @cuenta = Cuentum.new(cuenta_params)
      if @cuenta.save
        render json: @cuenta, status: :created
      else
        render json: @cuenta.errors, status: :unprocessable_entity
      end
    end
  
    def edit
      @cuenta = Cuentum.find(params[:id])
    end
  
    def update
      @cuenta = Cuentum.find(params[:id])
      if @cuenta.update(cuenta_params)
        render json: @cuenta, status: :ok
      else
        render json: @cuenta.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      @cuenta = Cuentum.find(params[:id])
      @cuenta.destroy
      head :no_content
    end
  
    private
  
    def cuenta_params
      params.require(:cuenta).permit(:username, :password, :id_persona)
    end
  end
  