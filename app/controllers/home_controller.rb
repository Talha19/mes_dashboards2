
class HomeController < ApplicationController
  def view
  end

  def index
      # @oee = Oee.take 
      # if @oee.blank? 
        # # redirect_to :oee_new
        # OeeParser.parse()
#         
      # end
  end
  
  def main_view
     redirect_to :hoem_index
  end
  
end
