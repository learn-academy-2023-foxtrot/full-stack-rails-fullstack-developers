class BlogController < ApplicationController
    def index
        @blogs = Blog.all
    end
    def show
        @blog = Blog.find(params[:id])
    end
    def new
        @blog = Blog.new
    end
    def create
        @blog = Blog.new(blog_params)
        if @blog.save
            redirect_to blogs_path
        else
            render 'new'
        end
    end
    private
    def blog_params
        params.require(:blog).permit(:title, :content)
    end
    def update
        @blog = Blog.find(params[:id])
        if @blog.update(blog_params)
            redirect_to blogs_path
        else
            render 'edit'
        end
    end
    def destroy
        @blog = Blog.find(params[:id])
        @blog.destroy
        redirect_to blogs_path
    end
end