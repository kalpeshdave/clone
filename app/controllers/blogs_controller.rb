class BlogsController < ApplicationController
 
  def index
    @title = "Blog"
   @blogs = Blog.find(:all,:limit => 5,:order => "id DESC")
    
  end

  def show
     @title = "Blog" 
    @comments = Comment.all
    @blog = Blog.find(params[:id])
    @blogs = Blog.find(:all, :conditions => {:id => params[:id]})
  end

  def new
     @title = "Blog" 
    @blog = Blog.new
    @people = Person.all
    @blogcatagories = Blogcatagory.all
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def create
    @people = Person.all
    @blogcatagories = Blogcatagory.all

    @blog = Blog.new(params[:blog])

    respond_to do |format|
      if @blog.save
        flash[:notice] = 'Blog was successfully created.'
        format.html { redirect_to :action => 'index' }
        format.xml  { render :xml => @blog, :status => :created, :location => @blog }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @blog.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @blog = Blog.find(params[:id])

    respond_to do |format|
      if @blog.update_attributes(params[:blog])
        flash[:notice] = 'Blog was successfully updated.'
        format.html { redirect_to(@blog) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @blog.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to :action => 'index'
  end
  def catagory
    @blogs = Blog.find_all_by_blogcatagory_id(params[:id])
 end
end
