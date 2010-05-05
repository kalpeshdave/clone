class WorksController < ApplicationController
 before_filter :login_required, :except => [:index, :show, :market, :experience]
  def index
         @title = "Works"
    @works = Work.all
     
 end

  def show
     @title = "Works"
    @work = Work.find(params[:id])
    @interconnects = Interconnect.find_all_by_work_id(params[:id])
   
  end

  def new
    @title = "Works"
    @work = Work.new
    @people = Person.find(:all)
    @markets = Market.find(:all)
    @experiences = Experience.find(:all)
    1.upto(3) { @work.images.build }
  end
  def edit
     @title = "Servics"
    @work = Work.find(params[:id])
  end

 def create
    @work = Work.new
    @people = Person.find(:all)
    @markets = Market.find(:all)
    @experiences = Experience.find(:all)
    1.upto(3) { @work.images.build }
    @work = Work.new(params[:work])

    respond_to do |format|
      if @work.save
        flash[:notice] = 'Work was successfully created.'
        format.html { redirect_to(@work) }
        format.xml  { render :xml => @work, :status => :created, :location => @work }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @work.errors, :status => :unprocessable_entity }
      end
    end
  end

 def market
   @works = Work.find(:all, :conditions=> {:market_id => params[:id]})
 end

 def experience
   @works = Work.find(:all, :conditions=> {:experience_id => params[:id]})
 end

  def destroy
    work = Work.find(params[:id])
    work.destroy
     flash[:notice] = "#{work.project_name} deleted."
     redirect_to works_path
   
  end
end
