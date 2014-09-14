require 'rexml/document'

include REXML
class OeesController < ApplicationController
  include REXML
  def new
    xmlfile = File.read("C:/rep2.xml")
    xmldoc = Document.new(xmlfile)
    Oee.delete_all
    xmldoc.elements.each("BI_ARBPL/Line") do |element|
      werk        = element.elements["werks"].text
      datum       = element.elements["datum"].text
      arbpl       = element.elements["arbpl"].text
      shift_text  = element.elements["shift_text"].text
      ist_prod    = element.elements["ist_prod"].text
      ist_rues    = element.elements["ist_rues"].text
      ist_still   = element.elements["ist_still"].text
      ist_stoe    = element.elements["ist_stoe"].text      
      
      @oee            = Oee.new
      @oee.werk       = werk
      @oee.datum      = datum
      @oee.arbpl      = arbpl
      @oee.shift_text = shift_text   
      @oee.ist_prod   = ist_prod
      @oee.ist_ruest  = ist_rues
      @oee.ist_still  = ist_still 
      @oee.ist_stoe   = ist_stoe      
      @oee.save
   end
    redirect_to :home_index
  end
end
