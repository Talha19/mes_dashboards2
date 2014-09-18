class ArbeitsplatzsController < ApplicationController
  before_action :authenticate_user!, except: [:create]
  
  def index
    @arbeitsplatz = Arbeitsplatz.all
  end

 def create
    @werk = Werk.find(params[:werk_id])
    @arbeitsplatz = @werk.arbeitsplatzs.create(abpl_params)
    redirect_to werk_path(@werk)
  end

  def destroy
    @werk = Werk.find(params[:werk_id])
    @arbeitsplatz = @werk.arbeitsplatzs.find(params[:id])

    @arbeitsplatz.destroy
    redirect_to werk_path(@werk)
  end

  def new
    @arbeitsplatz = Arbeitsplatz.new
  end

  def edit
    @arbeitsplatz = Arbeitsplatz.find(params[:id])
  end

  def show
    @arbeitsplatz = Arbeitsplatz.find(params[:id])
  end

  private

  def abpl_params
    params.require(:arbeitsplatz).permit(:name, :bezeichnung)
  end
end