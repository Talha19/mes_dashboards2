class MatypsController < ApplicationController
  before_action :authenticate_user!, except: [:create]
  def index
    @matyp = Matyp.all
  end

  def create
    @arbpl = Arbpl.find(params[:arbpl_id])
    @matyp = @arbpl.matyps.create(matyp_params)
    redirect_to arbpl_path(@arbpl)
  end

  def destroy
    @arbpl = Arbpl.find(params[:arbpl_id])
    @matyp = @arbpl.matyps.find(params[:id])

    @matyp.destroy
    redirect_to arbpl_path(@arbpl)
  end

  def new
    @matyp = Matyp.new
  end

  def show me
     
      @matyp = Matyp.find(params[:arbpl_id])
  end

  def edit
    @matyp = Matyp.find(params[:id])
  end

  private

  def matyp_params
    params.require(:matyp).permit(:name, :beschr)
  end
end
