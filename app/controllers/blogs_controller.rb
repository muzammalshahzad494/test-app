class BlogsController < ApplicationController

	before_action :set_blog, only: [:edit, :update, :show, :destroy]

	def new
		@blog = Blog.new
	end

# --------------------------------
	def index
	@blogs = Blog.all
	end

# --------------------------------
	def edit
	end

# --------------------------------

	def create
		@blog = Blog.new(blog_params)
		if @blog.save
			flash[:notice] = "Article was successfully created"
			redirect_to blog_path(@blog)
		else
			render 'new'
		end
	end
# --------------------------------

	def update
		if @blog.update(blog_params)
			flash[:notice] = "Blog was successfully created"
			redirect_to blog_path(@blog)
		else
			render 'edit'	
		end		
	end
# --------------------------------

	def show
	end

# --------------------------------
# destroy 

def destroy
	@delete.destroy
	if delete.destroy
		flash[:notice] = "sucessfully destroyed"
		redirect_to blog_path(@blog)
	else	
		render 'edit'
	end
end
# --------------------------------


	private


	def set_blog
		@blog = Blog.find(params[:id]) 
	end

	def blog_params
		params.require(:blog).permit(:title, :description)
	end
end

