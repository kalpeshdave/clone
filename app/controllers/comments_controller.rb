class CommentsController < ApplicationController
 def create
   @blog = Blog.find(params[:blog_id])
   @comment = @blog.comments.create!(params[:comment])
   respond_to do |format|
     format.html { redirect_to @blog}
     format.js
   end
  end
end
