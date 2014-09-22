class MatypsController < ApplicationController
  before_action :authenticate_user!, except: [:create]
  def index
    @matyp = Matyp.all
  end

  def create
    @arbpl = Arbpl.find(params[:arbpl_id])
    # @matyp = @arbpl.matyps.create(matyp_params)
    @matyp = @arbpl.create_matyp(matyp_params)
    redirect_to werk_arbpl_path(@arbpl.werk, @arbpl)
     # @arbpl = Arbpl.find(params[:arbpl_id])
    # @matyp = @arbpl.build_matyp(matyp_params)
    # @matyp.save
    # redirect_to @arbpl
  end

  def destroy
    @arbpl = Arbpl.find(params[:arbpl_id])
    @matyp = @arbpl.matyp

    @matyp.destroy
    redirect_to werk_arbpl_path(@arbpl.werk, @arbpl)
  end

  def new
    @matyp = Matyp.new
  end

  def show
      @arbpl = Arbpl.find(params[:arbpl_id])
      @matyp = @arbpl.matyp
  end

  def edit
    @matyp = Matyp.find(matyp_params)
  end

  private

  def matyp_params
    params.require(:matyp).permit(:name, :beschr)
  end
end
