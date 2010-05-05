class HomeController < ApplicationController
  def index
     @title = "Home"
     @works = Work.find(:all,:limit => 4,:order => "id DESC")
     @blogs = Blog.find(:all,:limit => 3,:order => "id DESC")
  end

end
