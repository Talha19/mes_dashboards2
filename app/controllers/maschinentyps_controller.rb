class MaschinentypsController < ApplicationController
  before_action :authenticate_user!, except: [:create]
  def index
    @maschinentyp = Maschinentyp.all
  end

  def create
    @arbeitsplatz = Arbeitsplatz.find(params[:arbeitsplatz_id])
    @maschinentyp = @arbeitsplatz.maschinentyps.create(matyp_params)
    redirect_to arbeitsplatz_path(@arbeitsplatz)
  end

  def destroy
    @arbeitsplatz = Arbeitsplatz.find(params[:arbeitsplatz_id])
    @maschinentyp = @arbeitsplatz.maschinentyps.find(params[:id])

    @maschinentyp.destroy
    redirect_to arbeitsplatz_path(@arbeitsplatz)
  end

  def new
    @maschinentyp = Maschinentyp.new
  end

  def show
  
      @maschinentyp = Maschinentyp.find(params[:arbeitsplatz_id])

  end

  def edit
    @maschinentyp = Maschinentyp.find(params[:id])
  end

  private

  def matyp_params
    params.require(:maschinentyp).permit(:name, :bezeichnung)
  end
end
