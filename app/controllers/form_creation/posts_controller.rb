require_dependency "form_creation/application_controller"

module FormCreation
  class PostsController < ApplicationController
    def index   
      @posts = Post.order('id DESC')
      @post = Post.new   
    end   
     
    # GET method to get a Post by id   
    def show   
      @post = Post.find(params[:id])   
    end   
     
    # GET method for the new Post form   
    def new   
      @post = Post.new   
    end   
     
    # POST method for processing form data   
    def create   
      @post = Post.new(post_params)
      if @post.save 
        flash[:notice] = 'Post added!'   
        redirect_to posts_path   
      else
        flash[:error] = 'Failed to edit Post!'   
        render :new
      end   
    end   
     
     # GET method for editing a Post based on id   
    def edit   
      @post = Post.find(params[:id])   
    end   
     
    # PUT method for updating in database a Post based on id   
    def update   
      @post = Post.find(params[:id])   
      if @post.update_attributes(post_params)   
        flash[:notice] = 'Post updated!'   
        redirect_to posts_path   
      else   
        flash[:error] = 'Failed to edit Post!'   
        render :edit   
      end   
    end   
     
    # DELETE method for deleting a Post from database based on id   
    def destroy   
      @post = Post.find(params[:id])   
      if @post.delete   
        flash[:notice] = 'Post deleted!'   
        redirect_to posts_path   
      else   
        flash[:error] = 'Failed to delete this Post!'   
        render :destroy   
      end   
    end   
     
    # we used strong parameters for the validation of params   
    def post_params   
      params.permit(:title, :description, :created_by)   
    end
  end
end
