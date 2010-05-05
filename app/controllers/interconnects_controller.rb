class InterconnectsController < ApplicationController

  def new
    @interconnect= Interconnect.new
   @works =Work.all
   @person = Person.find(params[:id])
   

  end

  def add_service
    @interconnect= Interconnect.new
    @person = Person.find(params[:id])
   @services = Service.all
   

  end

  def create
    @interconnect = Interconnect.create(params[:interconnect])
    if @interconnect.save
      redirect_to :controller => 'home', :action => 'index'
    else
      redirect_to :action => 'new'
    end
  end
end
