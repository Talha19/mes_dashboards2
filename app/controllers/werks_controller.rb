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

    redirect_to werks
  end

  def create
    @werk = Werk.new(werk_params)

    if @werk.save then
      NotificationMailer.new_werk(@werk).deliver
      render "notification_mailer/new_werk.html.erb"
      # redirect_to @werk
    else
      render 'new'
    end
  end

  def update 
    @werk = Werk.find(params[:id])

    @werk.update_attributes(werk_params)

    @werk.save!
    redirect_to @werk
  end

  private

  def werk_params

    params.require(:werk).permit(:werk, :stadt, :land)
  end

end
