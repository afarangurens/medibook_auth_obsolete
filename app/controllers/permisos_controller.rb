class PermisosController < ApplicationController
    def index
      @permisos = Permiso.all
    end
  
    def new
      @permiso = Permiso.new
    end
  
    def create
      @permiso = Permiso.new(permiso_params)
      if @permiso.save
        redirect_to permisos_path
      else
        render 'new'
      end
    end
  
    def edit
      @permiso = Permiso.find(params[:id])
    end
  
    def update
      @permiso = Permiso.find(params[:id])
      if @permiso.update(permiso_params)
        redirect_to permisos_path
      else
        render 'edit'
      end
    end
  
    def destroy
      @permiso = Permiso.find(params[:id])
      @permiso.destroy
      redirect_to permisos_path
    end
  
    private
  
    def permiso_params
      params.require(:permiso).permit(:nombre)
    end
  end
  