class PeopleController < ApplicationController
 before_filter :login_required, :except => [:index, :show, :type, :location]
 
  def index
     @title = "People"
   @people = Person.all
  end

  def show
      @title = "People"
     @person = Person.find(params[:id])
     @blogs =Blog.find(:all, :order => "id DESC",:conditions => {:person_id => (params[:id])})
     @interconnects = Interconnect.find_all_by_person_id(params[:id])
  end

  def new
     @title = "People"
    @person = Person.new
    @types = Type.find(:all)
    @locations = Location.find(:all)
  
 end
  def edit
   @types = Type.find(:all)
    @locations = Location.find(:all)
    @works = Work.find(:all)
    @services = Service.find(:all)
   @person = Person.find(params[:id])
 end


 def create
  @types = Type.find(:all)
    @locations = Location.find(:all)
    @person = Person.new(params[:person])

    respond_to do |format|
      if @person.save
        flash[:notice] = 'Person was successfully created.'
        format.html { redirect_to(:action => 'index') }
        format.xml  { render :xml => @person, :status => :created, :location => @person }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @person.errors, :status => :unprocessable_entity }
      end
    end
  end

def update
      @person = Person.find(params[:id])
    if @person.update_attributes(params[:person])
        flash[:notice] = " was successfully updated ."
        redirect_to :action=>"index"
        else
        render :action => 'update'
        end

 end

 def type
   @people = Person.find(:all, :conditions=> {:type_id => params[:id]})
 end

 def location
   @people = Person.find(:all, :conditions=> {:location_id => params[:id]})
 end

 def destroy
    person = Person.find(params[:id])
    person.destroy
     flash[:notice] = "#{person.name} deleted."
     redirect_to people_path
  end

 

end
