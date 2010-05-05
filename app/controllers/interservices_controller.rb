class InterservicesController < ApplicationController
  def new
    @interservice= Interservice.new
    @services= Service.all
    @person = Person.find(params[:id])
  end

  def create
    @interservice = Interservice.create(params[:interservice])
    if @interservice.save
      redirect_to :controller => 'home', :action => 'index'
    else
      redirect_to :action => 'new'
    end
  end

end
