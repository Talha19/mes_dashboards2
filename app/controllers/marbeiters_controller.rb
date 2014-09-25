class MarbeitersController < ApplicationController
    before_action :authenticate_user!, except: [:create]
  
  def index
    @marbeiter = Marbeiter.all
  end

 def create
    @arbpl = Arbpl.find(params[:arbpl_id])
    @marbeiter = @arbpl.marbeiters.create(marbeiter_params)

    NotificationMailer.new_matyp(@marbeiter,@arbpl,@arbpl.werk).deliver
    render "notification_mailer/new_marbeiter.html.erb"
  end

  def destroy
    @arbpl = Arbpl.find(params[:arbpl_id])
    @marbeiter = @arbpl.marbeiters

    @marbeiter.destroy
    redirect_to werk_arbpl_path(@arbpl.werk, @arbpl)
  end

  def new
    @marbeiter = Marbeiter.new
  end

  def edit
    @marbeiter = Marbeiter.find(marbeiter_params)
  end

  def show
      @arbpl = Arbpl.find(params[:arbpl_id])
      @marbeiter = @arbpl.marbeiters
  end

  private

  def marbeiter_params
    params.require(:marbeiter).permit(:name, :vname)
  end

end
