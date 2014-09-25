class ArbplsController < ApplicationController
  before_action :authenticate_user!, except: [:create]
  
  def index
    @arbpl = Arbpl.all
  end

 def create
    @werk = Werk.find(params[:werk_id])
    @arbpl = @werk.arbpls.create(abpl_params)
    NotificationMailer.new_arbpl(@arbpl,@werk).deliver
    render "notification_mailer/new_arbpl.html.erb"
    # redirect_to werk_path(@werk)
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
    @werk = Werk.find(params[:werk_id])
    @arbpl = @werk.arbpls.find(params[:id])
  end

  def show
    @werk = Werk.find(params[:werk_id])
    @arbpl = @werk.arbpls.find(params[:id])
    @matyp = (@arbpl.matyp || @arbpl.build_matyp)
    @marbeiter = Marbeiter.new
  end

  def countOfMarbeitersInWerk(value)
    @werk = Werk.find(params[:werk_id])
    @arbpl = @werk.arbpls.find(params[:id])
    @arbpl.each do |arbpl|
      anz += @arbpl.marbeiters.count
    end
    return anz
  end

  private

  def abpl_params
    params.require(:arbpl).permit(:name, :beschr)
  end

end
