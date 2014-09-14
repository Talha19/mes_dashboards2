class HomeController < ApplicationController
  def view
  end

  def index
      @oee = Oee.take 
      if @oee.blank? 
        redirect_to :oee_new
      end
  end
end
