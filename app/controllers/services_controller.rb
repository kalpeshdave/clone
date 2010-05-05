class ServicesController < ApplicationController
  
   before_filter :login_required, :except => [:index, :show]
  def index
     @title = "Services"
    @services = Service.all
  end

  def show
     @title = "Services"
    @service = Service.find(params[:id])
    @works = Work.find(:all,:limit => 6,:order => "id DESC")
     @interservices = Interservice.find_all_by_service_id(params[:id])
  end

  def new
     @title = "Services"
    @service = Service.new
    @people = Person.find(:all)
    @works = Work.find(:all)
  end

  def edit
     @title = "Servics"
    @service = Service.find(params[:id])
  end

  def create
    @service = Service.new
    @people = Person.find(:all)
    @works = Work.find(:all)
    @service = Service.new(params[:service])

    respond_to do |format|
      if @service.save
        flash[:notice] = 'Service was successfully created.'
        format.html { redirect_to(@service) }
        format.xml  { render :xml => @service, :status => :created, :location => @service }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @service.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @service = Service.find(params[:id])

    respond_to do |format|
      if @service.update_attributes(params[:service])
        flash[:notice] = 'Service was successfully updated.'
        format.html { redirect_to(@service) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @service.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    service = Service.find(params[:id])
    service.destroy
    flash[:notice] = "#{service.name} deleted."
     redirect_to services_path
  end
end
