class WerksController < ApplicationController

  before_action :authenticate_user!, except: [:create]
  
  def index
    @werk = Werk.all
  end

  def edit
    @werk = Werk.find(params[:id])
  end

  def new
    @werk = Werk.new
  end

  def show
    @werk = Werk.find(params[:id])
  end


  def destroy
    @werk = Werk.find(params[:id])
    @werk.destroy

    redirect_to werks_path
  end

  def create
    @werk = Werk.new(werk_params)

    if @werk.save then
      redirect_to @werk
    else
      render 'new'
    end
  end

  private

  def werk_params

    params.require(:werk).permit(:werk, :stadt, :land)
  end

end
