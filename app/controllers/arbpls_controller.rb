class ArbplsController < ApplicationController
  before_action :authenticate_user!, except: [:create]
  
  def index
    @arbpl = Arbpl.all
  end

 def create
    @werk = Werk.find(params[:werk_id])
    @arbpl = @werk.arbpls.create(abpl_params)
    redirect_to werk_path(@werk)
  end

  def destroy
    @werk = Werk.find(params[:werk_id])
    @arbpl = @werk.arbpls.find(params[:id])

    @arbpl.destroy
    redirect_to werk_path(@werk)
  end

  def new
    @arbpl = Arbpl.new
  end

  def edit
    @arbpl = Arbpl.find(params[:id])
  end

  def show
    @werk = Werk.find(params[:werk_id])
    @arbpl = @werk.arbpls.find(params[:id])
    @matyp = (@arbpl.matyp || @arbpl.build_matyp)
  end

  private

  def abpl_params
    params.require(:arbpl).permit(:name, :beschr)
  end

end
