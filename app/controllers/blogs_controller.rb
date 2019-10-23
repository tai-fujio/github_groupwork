class BlogsController < ApplicationController
    before_action :set_blog, only: [:show, :edit, :update,:destroy]
    def index
      @blogs = Blog.all
    end
  
    def show
      @blog = Blog.find(params[:id])
    end
  
    def new
      @blog = Blog.new
    end
  
    def edit
      @blog = Blog.find(params[:id])
    end
  
    def create
      @blog = Blog.new(blog_params)
      if params[:back]
        render :new
      else
        if @blog.save
          redirect_to root_path, notice: "登録完了"
        else
          render :new
        end
      end
    end
  
    def update
      @blog = Blog.find(params[:id])
      @blog.update!(blog_params)
      redirect_to blogs_path, notice: "更新完了"
    end
  
    def destroy
      @blog = Blog.find(params[:id])
      @blog.destroy
      redirect_to blogs_path, notice: "削除完了"
    end
  
    # def confirm
    #   @blog= Blog.new(blog_params)
    #   render :new if @blog.invalid?
    # end
  
    private
  
    def blog_params
      params.require(:blog).permit(:name, :description)
    end
  
    def set_blog
      @blog = Blog.find(params[:id])
    end
  end
  