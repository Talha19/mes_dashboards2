class MaschinentypsController < ApplicationController
  before_action :authenticate_user!, except: [:create]
  def index
    @maschinentyp = Maschinentyp.all 
  end

  def edit
    @maschinentyp = Maschinentyp.find(params[:id])
  end

  def new
    @maschinentyp = Maschinentyp.new
  end

  def create
    @maschinentyp = Maschinentyp.new(maschinentyp_params)

    if @maschinentyp.save then
      redirect_to @maschinentyp
    else
      render 'new'
    end
  end
  
    private

  def maschinentyp_params

    params.require(:name).permit(:bezeichnung)
  end

end
